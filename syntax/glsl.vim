" Vim syntax file
" Language:	OpenGL Shading Language
" Maintainer:	Sergey Tikhomirov <me@stikhomirov.com>
" URL:
" Last Change:	2012 July 7

if exists("b:current_syntax")
  finish
endif

" Statements
syn keyword   glslConditional   if else
syn keyword   glslRepeat        for while do
syn keyword   glslStatement     discard return break continue

" Comments
syn keyword	  glslTodo      contained TODO FIXME XXX
syn region    glslCommentL  start="//" skip="\\$" end="$" keepend contains=glslTodo
syn region    glslComment   matchgroup=glslCommentStart start="/\*" end="\*/" extend contains=glslTodo

" Preprocessor
syn region    glslPreCondit         start="^\s*#\s*\(if\|ifdef\|ifndef\|else\|elif\|endif\)" skip="\\$" end="$" keepend
syn region    glslDefine            start="^\s*#\s*\(define\|undef\)" skip="\\$" end="$" keepend
syn keyword   glslTokenConcat       ##
syn keyword   glslPredefinedMacro   __LINE__ __FILE__ __VERSION__ GL_ES
syn region    glslPreProc           start="^\s*#\s*\(error\|pragma\|extension\|version\|line\)" skip="\\$" end="$" keepend

" Boolean Constants
syn keyword   glslBoolean true false

" Integer Numbers
syn match     glslDecimalInt  "\(0\|[1-9]\d*\)"
syn match     glslOctalInt    "0\o\+"
syn match     glslHexInt      "0[xX]\x\+"

" Float Numbers
syn match     glslFloat   "\d\+\.\d\+\([eE][+-]\=\d\+\)\="
syn match     glslFloat   "\d\+\.\([eE][+-]\=\d\+\)\="
syn match     glslFloat   "\.\d\+\([eE][+-]\=\d\+\)\="
syn match     glslFloat   "\d\+[eE][+-]\=\d\+"

" Types
syn keyword	  glslStructure   struct
syn keyword   glslType  atomic_uint bool bvec2 bvec3 bvec4 dmat2 dmat2x2 dmat2x3
syn keyword   glslType  dmat2x4 dmat3 dmat3x2 dmat3x3 dmat3x4 dmat4 dmat4x2 dmat4x3
syn keyword   glslType  dmat4x4 double dvec2 dvec3 dvec4 float iimage1D iimage1DArray
syn keyword   glslType  iimage2D iimage2DArray iimage2DMS iimage2DMSArray iimage2DRect
syn keyword   glslType  iimage3D iimageBuffer iimageCube iimageCubeArray image1D
syn keyword   glslType  image1DArray image2D image2DArray image2DMS image2DMSArray
syn keyword   glslType  image2DRect image3D imageBuffer imageCube imageCubeArray int
syn keyword   glslType  isampler1D isampler1DArray isampler2D isampler2DArray
syn keyword   glslType  isampler2DMS isampler2DMSArray isampler2DRect isampler3D
syn keyword   glslType  isamplerBuffer isamplerCube isamplerCubeArray ivec2 ivec3
syn keyword   glslType  ivec4 mat2 mat2x2 mat2x3 mat2x4 mat3 mat3x2 mat3x3 mat3x4
syn keyword   glslType  mat4 mat4x2 mat4x3 mat4x4 sampler1D sampler1DArray
syn keyword   glslType  sampler1DArrayShadow sampler1DShadow sampler2D sampler2DArray
syn keyword   glslType  sampler2DArrayShadow sampler2DMS sampler2DMSArray
syn keyword   glslType  sampler2DMSArray sampler2DRect sampler2DRectShadow
syn keyword   glslType  sampler2DShadow sampler3D samplerBuffer samplerCube
syn keyword   glslType  samplerCubeArray samplerCubeArrayShadow samplerCubeShadow
syn keyword   glslType  uimage1D uimage1DArray uimage2D uimage2DArray uimage2DMS
syn keyword   glslType  uimage2DMSArray uimage2DRect uimage3D uimageBuffer uimageCube
syn keyword   glslType  uimageCubeArray uint usampler1D usampler1DArray usampler2D
syn keyword   glslType  usampler2DArray usampler2DMS usampler2DMSArray usampler2DRect
syn keyword   glslType  usampler3D usamplerBuffer usamplerCube usamplerCubeArray
syn keyword   glslType  uvec2 uvec3 uvec4 vec2 vec3 vec4 void 


hi def link glslConditional       Conditional
hi def link glslRepeat            Repeat
hi def link glslStatement         Statement
hi def link glslTodo              Todo
hi def link glslCommentL          glslComment
hi def link glslCommentStart      glslComment
hi def link glslComment           Comment
hi def link glslPreCondit         PreCondit
hi def link glslDefine            Define
hi def link glslTokenConcat       glslPreProc
hi def link glslPredefinedMacro   Macro
hi def link glslPreProc           PreProc
hi def link glslBoolean           Boolean
hi def link glslDecimalInt        glslNumber
hi def link glslOctalInt          glslNumber
hi def link glslHexInt            glslNumber
hi def link glslNumber            Number
hi def link glslFloat             Float
hi def link glslStructure         Structure
hi def link glslType              Type

let b:current_syntax = "glsl"

" vim:set sw=2: