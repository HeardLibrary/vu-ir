/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/js/vul-brandbar.js":
/*!********************************!*\
  !*** ./src/js/vul-brandbar.js ***!
  \********************************/
/***/ (() => {

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); Object.defineProperty(subClass, "prototype", { writable: false }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function _createSuperInternal() { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } else if (call !== void 0) { throw new TypeError("Derived constructors may only return object or undefined"); } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _wrapNativeSuper(Class) { var _cache = typeof Map === "function" ? new Map() : undefined; _wrapNativeSuper = function _wrapNativeSuper(Class) { if (Class === null || !_isNativeFunction(Class)) return Class; if (typeof Class !== "function") { throw new TypeError("Super expression must either be null or a function"); } if (typeof _cache !== "undefined") { if (_cache.has(Class)) return _cache.get(Class); _cache.set(Class, Wrapper); } function Wrapper() { return _construct(Class, arguments, _getPrototypeOf(this).constructor); } Wrapper.prototype = Object.create(Class.prototype, { constructor: { value: Wrapper, enumerable: false, writable: true, configurable: true } }); return _setPrototypeOf(Wrapper, Class); }; return _wrapNativeSuper(Class); }

function _construct(Parent, args, Class) { if (_isNativeReflectConstruct()) { _construct = Reflect.construct; } else { _construct = function _construct(Parent, args, Class) { var a = [null]; a.push.apply(a, args); var Constructor = Function.bind.apply(Parent, a); var instance = new Constructor(); if (Class) _setPrototypeOf(instance, Class.prototype); return instance; }; } return _construct.apply(null, arguments); }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {})); return true; } catch (e) { return false; } }

function _isNativeFunction(fn) { return Function.toString.call(fn).indexOf("[native code]") !== -1; }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

var VulBrandbar = /*#__PURE__*/function (_HTMLElement) {
  _inherits(VulBrandbar, _HTMLElement);

  var _super = _createSuper(VulBrandbar);

  function VulBrandbar() {
    var _this;

    _classCallCheck(this, VulBrandbar);

    _this = _super.call(this);
    var brandbar = document.createElement('nav');
    brandbar.classList.add('vu-navbar', 'vu-navbar-inverse');
    brandbar.id = 'main_navbar';
    brandbar.setAttribute('role', 'navigation');
    brandbar.setAttribute('aria-label', 'Vanderbilt University');
    brandbar.innerHTML = "\n            <div class=\"container\">\n                <div class=\"vu-navbar-header\">\n                    <button type=\"button\" class=\"vu-navbar-toggle\" data-toggle=\"collapse\" data-target=\".vu-navbar-collapse\">\n                        <span class=\"sr-only\">Toggle navigation</span>\n                        <span class=\"icon-bar\"></span>\n                        <span class=\"icon-bar\"></span>\n                        <span class=\"icon-bar\"></span>\n                    </button>\n                    <a class=\"vu-navbar-brand\" href=\"http://www.vanderbilt.edu\">\n                        <img class=\"hidden-xs hidden-sm hidden-md\" src=\"https://www.library.vanderbilt.edu/images/vanderbilt2022.svg\" alt=\"Vanderbilt University\" width=\"100%\" height=\"90%\">\n                        <img class=\"visible-xs visible-sm visible-md\" src=\"https://www.library.vanderbilt.edu/images/vanderbilt2022.svg\" alt=\"Vanderbilt University\" width=\"100%\" height=\"90%\">\n                    </a>\n                </div>\n                <div class=\"vubrandbar collapse vu-navbar-collapse\">\n                    <ul class=\"vu-nav vu-navbar-nav vu-navbar-right vu-toolbar\">\n                        <!-- Logins -->\n                        <li class=\"dropdown\">\n                            <button class=\"dropdown-toggle btn\" type=\"button\" id=\"loginsBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                <i class=\"vubrandbar__icon glyphicon glyphicon-lock\"></i>&nbsp; Logins <span class=\"caret\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"loginsBtn\">\n                                <a class=\"dropdown-item\" href=\"https://catalog.library.vanderbilt.edu/discovery/account?vid=01VAN_INST:vanui\">My Account</a>\n                                <a class=\"dropdown-item\" href=\"http://gmail.vanderbilt.edu\">VUGmail</a>\n                                <a class=\"dropdown-item\" href=\"https://outlook.office.com/vanderbilt.edu\">VMail</a>\n                                <a class=\"dropdown-item\" href=\"http://yes.vanderbilt.edu/\">YES</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/brightspace/\">Brightspace</a>\n                                <a class=\"dropdown-item\" href=\"https://oraclecloud.vanderbilt.edu/\">SkyVU</a>\n                                <a class=\"dropdown-item\" href=\"https://anchorlink.vanderbilt.edu/account/logon\">Anchor Link</a>\n                            </div>\n                        </li>\n\n                        <!-- Resources -->\n                        <li class=\"dropdown\">\n                            <button class=\"dropdown-toggle btn\" type=\"button\" id=\"resourcesBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                <i class=\"vubrandbar__icon glyphicon glyphicon-cog\"></i>&nbsp; Resources <span class=\"caret\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\">\n                                <a class=\"dropdown-item\" href=\"http://vu.edu/peoplefinder\">PeopleFinder</a>\n                                <a class=\"dropdown-item\" href=\"http://www.library.vanderbilt.edu/\">Libraries</a>\n                                <a class=\"dropdown-item\" href=\"http://news.vanderbilt.edu\">News</a>\n                                <a class=\"dropdown-item\" href=\"http://events.vanderbilt.edu\">Calendar</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/map/\">Maps</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/atoz/letter/A\">A-Z</a>\n                                <a class=\"dropdown-item\" href=\"https://social.vanderbilt.edu\">Get Social</a>\n                            </div>\n                        </li>\n\n                        <!-- Explore VU -->\n                        <li class=\"dropdown\">\n                            <button class=\"dropdown-toggle btn\" type=\"button\" id=\"exploreBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                <i class=\"vubrandbar__icon glyphicon glyphicon-th\"></i>&nbsp; Explore VU <span class=\"caret\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"exploreBtn\">\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/about/\">About</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/prospective/\">Admissions</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/academics/\">Academics</a>\n                                <a class=\"dropdown-item\" href=\"http://research.vanderbilt.edu/\">Research</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/student/\">Students</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vanderbilt.edu/faculty-staff/\">Faculty &amp; Staff</a>\n                                <a class=\"dropdown-item\" href=\"http://www.vucommodores.com/\">Athletics</a>\n                                <a class=\"dropdown-item\" href=\"http://www.mc.vanderbilt.edu/\">Medical Center</a>\n                            </div>\n                        </li>\n                    </ul>\n                </div>\n            </div>\n        ";

    _this.appendChild(brandbar);

    return _this;
  }

  return _createClass(VulBrandbar);
}( /*#__PURE__*/_wrapNativeSuper(HTMLElement));

customElements.define('vul-brandbar', VulBrandbar);

/***/ }),

/***/ "./src/js/vul-header.js":
/*!******************************!*\
  !*** ./src/js/vul-header.js ***!
  \******************************/
/***/ (() => {

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); Object.defineProperty(subClass, "prototype", { writable: false }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function _createSuperInternal() { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } else if (call !== void 0) { throw new TypeError("Derived constructors may only return object or undefined"); } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _wrapNativeSuper(Class) { var _cache = typeof Map === "function" ? new Map() : undefined; _wrapNativeSuper = function _wrapNativeSuper(Class) { if (Class === null || !_isNativeFunction(Class)) return Class; if (typeof Class !== "function") { throw new TypeError("Super expression must either be null or a function"); } if (typeof _cache !== "undefined") { if (_cache.has(Class)) return _cache.get(Class); _cache.set(Class, Wrapper); } function Wrapper() { return _construct(Class, arguments, _getPrototypeOf(this).constructor); } Wrapper.prototype = Object.create(Class.prototype, { constructor: { value: Wrapper, enumerable: false, writable: true, configurable: true } }); return _setPrototypeOf(Wrapper, Class); }; return _wrapNativeSuper(Class); }

function _construct(Parent, args, Class) { if (_isNativeReflectConstruct()) { _construct = Reflect.construct; } else { _construct = function _construct(Parent, args, Class) { var a = [null]; a.push.apply(a, args); var Constructor = Function.bind.apply(Parent, a); var instance = new Constructor(); if (Class) _setPrototypeOf(instance, Class.prototype); return instance; }; } return _construct.apply(null, arguments); }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {})); return true; } catch (e) { return false; } }

function _isNativeFunction(fn) { return Function.toString.call(fn).indexOf("[native code]") !== -1; }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

var VulHeader = /*#__PURE__*/function (_HTMLElement) {
  _inherits(VulHeader, _HTMLElement);

  var _super = _createSuper(VulHeader);

  function VulHeader() {
    var _this;

    _classCallCheck(this, VulHeader);

    _this = _super.call(this);

    var shadow = _this.attachShadow({
      mode: 'open'
    });

    var header = document.createElement('header');
    var division = _this.division;
    header.classList.add('vu-header');
    header.innerHTML = "\n            <a class=\"sr-only sr-only-focusable\" href=\"#maincontent\">Skip to main content</a>\n            <slot></slot>\n            \n            <div class=\"img-banner header-background\" data-div=\"".concat(division, "\">\n                <div class=\"container container--banner\">\n                    <a href=\"https://www.library.vanderbilt.edu/\">\n                        <h1 class=\"graphic-header__title livetextheader\" aria-label=\"").concat(division, " Home\">\n                            Jean &amp; Alexander Heard <b>Libraries</b>\n                        </h1>\n                    </a>\n                </div>\n            </div>\n        ");
    shadow.appendChild(header);
    return _this;
  }

  _createClass(VulHeader, [{
    key: "connectedCallback",
    value: function connectedCallback() {
      var shadowRoot = this.shadowRoot;
      var stylesheet = 'vul-pw-header.css';
      var link = document.createElement('link');
      link.setAttribute('rel', 'stylesheet');
      link.setAttribute('href', stylesheet);
      shadowRoot.appendChild(link);
    }
  }, {
    key: "division",
    get: function get() {
      return this.getAttribute('division') || '';
    }
  }]);

  return VulHeader;
}( /*#__PURE__*/_wrapNativeSuper(HTMLElement));

customElements.define('vul-header', VulHeader);

/***/ }),

/***/ "./src/js/vul-navigation.js":
/*!**********************************!*\
  !*** ./src/js/vul-navigation.js ***!
  \**********************************/
/***/ (() => {

function _typeof(obj) { "@babel/helpers - typeof"; return _typeof = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (obj) { return typeof obj; } : function (obj) { return obj && "function" == typeof Symbol && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; }, _typeof(obj); }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, "prototype", { writable: false }); return Constructor; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function"); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } }); Object.defineProperty(subClass, "prototype", { writable: false }); if (superClass) _setPrototypeOf(subClass, superClass); }

function _createSuper(Derived) { var hasNativeReflectConstruct = _isNativeReflectConstruct(); return function _createSuperInternal() { var Super = _getPrototypeOf(Derived), result; if (hasNativeReflectConstruct) { var NewTarget = _getPrototypeOf(this).constructor; result = Reflect.construct(Super, arguments, NewTarget); } else { result = Super.apply(this, arguments); } return _possibleConstructorReturn(this, result); }; }

function _possibleConstructorReturn(self, call) { if (call && (_typeof(call) === "object" || typeof call === "function")) { return call; } else if (call !== void 0) { throw new TypeError("Derived constructors may only return object or undefined"); } return _assertThisInitialized(self); }

function _assertThisInitialized(self) { if (self === void 0) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return self; }

function _wrapNativeSuper(Class) { var _cache = typeof Map === "function" ? new Map() : undefined; _wrapNativeSuper = function _wrapNativeSuper(Class) { if (Class === null || !_isNativeFunction(Class)) return Class; if (typeof Class !== "function") { throw new TypeError("Super expression must either be null or a function"); } if (typeof _cache !== "undefined") { if (_cache.has(Class)) return _cache.get(Class); _cache.set(Class, Wrapper); } function Wrapper() { return _construct(Class, arguments, _getPrototypeOf(this).constructor); } Wrapper.prototype = Object.create(Class.prototype, { constructor: { value: Wrapper, enumerable: false, writable: true, configurable: true } }); return _setPrototypeOf(Wrapper, Class); }; return _wrapNativeSuper(Class); }

function _construct(Parent, args, Class) { if (_isNativeReflectConstruct()) { _construct = Reflect.construct; } else { _construct = function _construct(Parent, args, Class) { var a = [null]; a.push.apply(a, args); var Constructor = Function.bind.apply(Parent, a); var instance = new Constructor(); if (Class) _setPrototypeOf(instance, Class.prototype); return instance; }; } return _construct.apply(null, arguments); }

function _isNativeReflectConstruct() { if (typeof Reflect === "undefined" || !Reflect.construct) return false; if (Reflect.construct.sham) return false; if (typeof Proxy === "function") return true; try { Boolean.prototype.valueOf.call(Reflect.construct(Boolean, [], function () {})); return true; } catch (e) { return false; } }

function _isNativeFunction(fn) { return Function.toString.call(fn).indexOf("[native code]") !== -1; }

function _setPrototypeOf(o, p) { _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) { o.__proto__ = p; return o; }; return _setPrototypeOf(o, p); }

function _getPrototypeOf(o) { _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) { return o.__proto__ || Object.getPrototypeOf(o); }; return _getPrototypeOf(o); }

var VulNavigation = /*#__PURE__*/function (_HTMLElement) {
  _inherits(VulNavigation, _HTMLElement);

  var _super = _createSuper(VulNavigation);

  function VulNavigation() {
    var _this;

    _classCallCheck(this, VulNavigation);

    _this = _super.call(this);
    var vuNav = document.createElement('div');
    vuNav.classList.add('vu-navbar', 'vu-navbar-inverse', 'no-border-radius');
    vuNav.innerHTML = "\n            <div class=\"container\">\n                <nav class=\"vumainmenu vu-navbar-collapse collapse\" aria-label=\"Library\" aria-expanded=\"false\">\n                    <ul id=\"sitenav\" class=\"vu-nav vu-navbar-nav vu-navbar-left vunavigation\">\n                        <li class=\"home\">\n                            <a href=\"/\" aria-label=\"Jean &amp; Alexander Heard Libraries Home\">Home</a>\n                        </li>\n\n                        <li class=\"about dropdown\">\n                            <button class=\"vumainmenu__dropdown dropdown-toggle btn\" type=\"button\" id=\"aboutBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                About <span class=\"vumainmenu__text--gold fas fa-caret-down\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"aboutBtn\">\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about\">About the Heard Libraries</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/accessanduse.php\">Access and Use</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/guidetolibraries.php\">Guide to Libraries</a>\n                                <a class=\"dropdown-item\" href=\"https://events.vanderbilt.edu/view/month/tags/library\">Library Events Calendar</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/policies\">Library Policies</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/programs.php\">Library Programs</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/staff\">Staff and Departments</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/giving\">Support the Libraries</a>\n                                <a class=\"dropdown-item\" href=\"https://www.vanderbilt.edu/coronavirus/fall-2020/fall-2020-visitors-and-suppliers/\">Visitor Information</a>\n                            </div>\n                        </li>\n\n                        <li class=\"services dropdown\">\n                            <button class=\"vumainmenu__dropdown dropdown-toggle btn\" type=\"button\" id=\"servicesBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                Services <span class=\"vumainmenu__text--gold fas fa-caret-down\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"servicesBtn\">\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/services/reserves.php\">Course Reserves</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/disc\">Digital Scholarship</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/alumni\">For Alumni</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/faculty-staff\">For Faculty and Staff</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/students\">For Students</a>\n                                <a class=\"dropdown-item\" href=\"https://illiad.library.vanderbilt.edu/illiad/logon/\">Interlibrary Loan</a>\n                                <a class=\"dropdown-item\" href=\"https://catalog.library.vanderbilt.edu/discovery/account?vid=01VAN_INST:vanui\">My Account</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/services/studyrooms.php\">Study Rooms and Carrels</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/technology\">Technology</a>\n                            </div>\n                        </li>\n\n                        <li class=\"research dropdown\">\n                            <button class=\"vumainmenu__dropdown dropdown-toggle btn\" type=\"button\" id=\"researchBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                Research <span class=\"vumainmenu__text--gold fas fa-caret-down\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"researchBtn\">\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/fellows\">Buchanan Library Fellows</a>\n                                <a class=\"dropdown-item\" href=\"https://researchguides.library.vanderbilt.edu/az.php\">Databases A-Z</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/exhibits\">Exhibitions</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/immersion.php\">Immersion Resources</a>\n                                <a class=\"dropdown-item\" href=\"https://ir.vanderbilt.edu\">Institutional Repository</a>\n                                <a class=\"dropdown-item\" href=\"https://catalog.library.vanderbilt.edu/discovery/jsearch?vid=01VAN_INST:vanui\">Journals</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/subject-specialists.php\">Librarians by Subject</a>\n                                <a class=\"dropdown-item\" href=\"https://catalog.library.vanderbilt.edu/discovery/search?vid=01VAN_INST:vanui\">Library Catalog</a>\n                                <a class=\"dropdown-item\" href=\"https://researchguides.library.vanderbilt.edu\">Research and Course Guides</a>\n                                <a class=\"dropdown-item\" href=\"https://tvnews.vanderbilt.edu\">Television News Archive</a>\n                            </div>\n                        </li>\n\n                        <li class=\"help dropdown\">\n                            <button class=\"vumainmenu__dropdown dropdown-toggle btn\" type=\"button\" id=\"helpBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                Help <span class=\"vumainmenu__text--gold fas fa-caret-down\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"helpBtn\">\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/accessibility.php\">Accessibility Services</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/ask-librarian.php\">Ask a Librarian</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/about/contact.php\">Contact Us</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/disc/copyright.php\">Copyright</a>\n                                <a class=\"dropdown-item\" href=\"https://researchguides.library.vanderbilt.edu/search/searching_the_library_catalog\">How to Search the Catalog</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/subject-specialists.php\">Librarians by Subject</a>\n                                <a class=\"dropdown-item\" href=\"https://researchguides.library.vanderbilt.edu\">Research and Course Guides</a>\n                            </div>\n                        </li>\n\n                        <li class=\"campus-libraries dropdown\">\n                            <button class=\"vumainmenu__dropdown dropdown-toggle btn\" type=\"button\" id=\"campusLibrariesBtn\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n                                Locations <span class=\"vumainmenu__text--gold fas fa-caret-down\"></span>\n                            </button>\n                            <div class=\"dropdown-menu\" aria-labelledby=\"campusLibrariesBtn\">\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/biomedical/\">Biomedical</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/central/\">Central</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/divinity/\">Divinity</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/gallery/\">Fine Arts Gallery</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/law/\">Law</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/management/\">Management</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/music/\">Music</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/peabody/\">Peabody</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/science/\">Science &amp; Engineering</a>\n                                <a class=\"dropdown-item\" href=\"https://www.library.vanderbilt.edu/specialcollections/\">Special Collections</a>\n                            </div>\n                        </li>\n\n                        <li class=\"hours\">\n                            <a href=\"https://www.library.vanderbilt.edu/hours.php\">Hours</a>\n                        </li>\n\n                        <li>\n                            <a href=\"https://www.library.vanderbilt.edu/ask-librarian.php\">Ask a Librarian</a>\n                        </li>\n                    </ul>\n                </nav>\n            </div>\n        ";

    _this.appendChild(vuNav);

    return _this;
  }

  return _createClass(VulNavigation);
}( /*#__PURE__*/_wrapNativeSuper(HTMLElement));

customElements.define('vul-navigation', VulNavigation);

/***/ }),

/***/ "./src/bootstrap-3.4.1/less/bootstrap.less":
/*!*************************************************!*\
  !*** ./src/bootstrap-3.4.1/less/bootstrap.less ***!
  \*************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
// extracted by mini-css-extract-plugin


/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = __webpack_modules__;
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/chunk loaded */
/******/ 	(() => {
/******/ 		var deferred = [];
/******/ 		__webpack_require__.O = (result, chunkIds, fn, priority) => {
/******/ 			if(chunkIds) {
/******/ 				priority = priority || 0;
/******/ 				for(var i = deferred.length; i > 0 && deferred[i - 1][2] > priority; i--) deferred[i] = deferred[i - 1];
/******/ 				deferred[i] = [chunkIds, fn, priority];
/******/ 				return;
/******/ 			}
/******/ 			var notFulfilled = Infinity;
/******/ 			for (var i = 0; i < deferred.length; i++) {
/******/ 				var [chunkIds, fn, priority] = deferred[i];
/******/ 				var fulfilled = true;
/******/ 				for (var j = 0; j < chunkIds.length; j++) {
/******/ 					if ((priority & 1 === 0 || notFulfilled >= priority) && Object.keys(__webpack_require__.O).every((key) => (__webpack_require__.O[key](chunkIds[j])))) {
/******/ 						chunkIds.splice(j--, 1);
/******/ 					} else {
/******/ 						fulfilled = false;
/******/ 						if(priority < notFulfilled) notFulfilled = priority;
/******/ 					}
/******/ 				}
/******/ 				if(fulfilled) {
/******/ 					deferred.splice(i--, 1)
/******/ 					var r = fn();
/******/ 					if (r !== undefined) result = r;
/******/ 				}
/******/ 			}
/******/ 			return result;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/jsonp chunk loading */
/******/ 	(() => {
/******/ 		// no baseURI
/******/ 		
/******/ 		// object to store loaded and loading chunks
/******/ 		// undefined = chunk not loaded, null = chunk preloaded/prefetched
/******/ 		// [resolve, reject, Promise] = chunk loading, 0 = chunk loaded
/******/ 		var installedChunks = {
/******/ 			"/js/vul-pw-header": 0,
/******/ 			"css/bootstrap": 0
/******/ 		};
/******/ 		
/******/ 		// no chunk on demand loading
/******/ 		
/******/ 		// no prefetching
/******/ 		
/******/ 		// no preloaded
/******/ 		
/******/ 		// no HMR
/******/ 		
/******/ 		// no HMR manifest
/******/ 		
/******/ 		__webpack_require__.O.j = (chunkId) => (installedChunks[chunkId] === 0);
/******/ 		
/******/ 		// install a JSONP callback for chunk loading
/******/ 		var webpackJsonpCallback = (parentChunkLoadingFunction, data) => {
/******/ 			var [chunkIds, moreModules, runtime] = data;
/******/ 			// add "moreModules" to the modules object,
/******/ 			// then flag all "chunkIds" as loaded and fire callback
/******/ 			var moduleId, chunkId, i = 0;
/******/ 			if(chunkIds.some((id) => (installedChunks[id] !== 0))) {
/******/ 				for(moduleId in moreModules) {
/******/ 					if(__webpack_require__.o(moreModules, moduleId)) {
/******/ 						__webpack_require__.m[moduleId] = moreModules[moduleId];
/******/ 					}
/******/ 				}
/******/ 				if(runtime) var result = runtime(__webpack_require__);
/******/ 			}
/******/ 			if(parentChunkLoadingFunction) parentChunkLoadingFunction(data);
/******/ 			for(;i < chunkIds.length; i++) {
/******/ 				chunkId = chunkIds[i];
/******/ 				if(__webpack_require__.o(installedChunks, chunkId) && installedChunks[chunkId]) {
/******/ 					installedChunks[chunkId][0]();
/******/ 				}
/******/ 				installedChunks[chunkId] = 0;
/******/ 			}
/******/ 			return __webpack_require__.O(result);
/******/ 		}
/******/ 		
/******/ 		var chunkLoadingGlobal = self["webpackChunkvul_public_web_components"] = self["webpackChunkvul_public_web_components"] || [];
/******/ 		chunkLoadingGlobal.forEach(webpackJsonpCallback.bind(null, 0));
/******/ 		chunkLoadingGlobal.push = webpackJsonpCallback.bind(null, chunkLoadingGlobal.push.bind(chunkLoadingGlobal));
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module depends on other loaded chunks and execution need to be delayed
/******/ 	__webpack_require__.O(undefined, ["css/bootstrap"], () => (__webpack_require__("./src/js/vul-brandbar.js")))
/******/ 	__webpack_require__.O(undefined, ["css/bootstrap"], () => (__webpack_require__("./src/js/vul-header.js")))
/******/ 	__webpack_require__.O(undefined, ["css/bootstrap"], () => (__webpack_require__("./src/js/vul-navigation.js")))
/******/ 	var __webpack_exports__ = __webpack_require__.O(undefined, ["css/bootstrap"], () => (__webpack_require__("./src/bootstrap-3.4.1/less/bootstrap.less")))
/******/ 	__webpack_exports__ = __webpack_require__.O(__webpack_exports__);
/******/ 	
/******/ })()
;