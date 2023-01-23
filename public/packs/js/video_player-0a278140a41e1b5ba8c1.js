/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/video_player.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/video_player.js":
/*!**********************************************!*\
  !*** ./app/javascript/packs/video_player.js ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/soumyaranjan/Desktop/Final Project/Elearning/app/javascript/packs/video_player.js: Identifier 'videoList' has already been declared. (14:4)\n\n  12 |    };\n  13 | });\n> 14 | let videoList = document.querySelectorAll('.video-list-container .list');\n     |     ^\n  15 |\n  16 | videoList.forEach(vid =>{\n  17 |    vid.onclick = () =>{\n    at instantiate (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:67:32)\n    at constructor (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:364:12)\n    at Parser.raise (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:3365:19)\n    at ScopeHandler.checkRedeclarationInScope (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:1587:19)\n    at ScopeHandler.declareName (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:1558:12)\n    at Parser.declareNameFromIdentifier (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:10756:16)\n    at Parser.checkIdentifier (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:10752:12)\n    at Parser.checkLVal (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:10686:12)\n    at Parser.parseVarId (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13660:10)\n    at Parser.parseVar (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13638:12)\n    at Parser.parseVarStatement (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13458:10)\n    at Parser.parseStatementContent (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13039:23)\n    at Parser.parseStatementLike (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:12952:17)\n    at Parser.parseModuleItem (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:12933:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13558:36)\n    at Parser.parseBlockBody (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:13550:10)\n    at Parser.parseProgram (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:12842:10)\n    at Parser.parseTopLevel (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:12832:25)\n    at Parser.parse (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:14740:10)\n    at parse (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/parser/lib/index.js:14782:38)\n    at parser (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/core/lib/parser/index.js:41:34)\n    at parser.next (<anonymous>)\n    at normalizeFile (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/core/lib/transformation/normalize-file.js:66:38)\n    at normalizeFile.next (<anonymous>)\n    at run (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/core/lib/transformation/index.js:21:50)\n    at run.next (<anonymous>)\n    at transform (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/core/lib/transform.js:22:41)\n    at transform.next (<anonymous>)\n    at step (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:261:32)\n    at /home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:273:13\n    at async.call.result.err.err (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:223:11)\n    at /home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:189:28\n    at /home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/@babel/core/lib/gensync-utils/async.js:72:7\n    at /home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:113:33\n    at step (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:287:14)\n    at /home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:273:13\n    at async.call.result.err.err (/home/soumyaranjan/Desktop/Final Project/Elearning/node_modules/gensync/index.js:223:11)");

/***/ })

/******/ });
//# sourceMappingURL=video_player-0a278140a41e1b5ba8c1.js.map