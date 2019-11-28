module.exports = function(router, passport){
	router.get('/', function(req, res, next) {
	  res.render('admin_login', { message:req.flash('loginMessage')});
	});

	router.get('/signup', function(req, res){
		res.render('signup', {message: req.flash('signupMessage')});
	});

	router.get('/index', function(req, res, next) {
	  res.render('index', { action: "Điều khiển" });
	});

	router.get('/quan_ly_gian_hang', function(req, res, next) {
	  res.render('quan_ly_gian_hang', { action: "Quản lý gian hàng" });
	});

	router.get('/profile', isLoggedIn, function(req, res, next) {
	  res.render('profile', { action: "Profile", user:req.user });
	});

	router.get('/quan_ly_account', function(req, res, next) {
	  res.render('quan_ly_account', { action: "Quản lý accounts" });
	});

	router.get('/quan_ly_don_hang', function(req, res, next) {
	  res.render('quan_ly_don_hang', {  action: "Quản lý đơn hàng" });
	});

	router.get('/thong_ke', function(req, res, next) {
	  res.render('thong_ke', { action: "Thống kê" });
	});

	router.get('/chinh_sua_profile', function(req, res, next) {
	  res.render('chinh_sua_profile', { action: "Chỉnh sửa profile" });
	});

	router.get('/logout', function(req, res){
		req.logout();
		res.redirect('/');
	});
	//Post

	router.post('/', passport.authenticate('local-login', 
		{
			successRedirect: '/index',
			failureRedirect: '/',
			failureFlash: true
		}), 
		function(req, res) {
			if(req.body.remember){
				req.session.cookie.maxAge = 1000 * 60 * 3;
			}else{
				req.session.cookie.expires = false;
			}
			res.redirect('/');
		}
	);

	router.post('/signup', passport.authenticate('local-signup', {
		successRedirect: '/',
		failureRedirect: '/signup',
		failureFlash: true
	}));
}
function isLoggedIn(req, res, next){
	if(req.isAuthenticated())
		return next();
	res.redirect('/');
}