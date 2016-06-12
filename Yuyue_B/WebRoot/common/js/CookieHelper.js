// JavaScript Document
var cookie =
{
   // 读取COOKIES, n为COOKIE名
   Get : function(n)
   {
      var re = new RegExp(n + '=([^;]*);?', 'gi');
      var r = re.exec(document.cookie) || [];
      return (r.length > 1 ? r[1] : null)
   }
   ,
   Get1 : function(n)
   {
      var re = new RegExp(n + '=([^;]*);?', 'gi');
      var r = re.exec(document.cookie) || [];
      return decodeURIComponent(r.length > 1 ? r[1] : null)
   }
   ,
   // 写入COOKIES, n为Cookie名，v为value,e 保存多长时间，p，路径；d域；s安全
   Set : function(n, v, e, p, d, s)
   {
      var t = new Date;
      if(e)
      {
         // 8.64e7 一天 3.6e6 一小时
         t.setTime(t.getTime() + (e * 3.6e6));

      }
      document.cookie = n + '=' + v + '; ' + ( ! e ? '' : '; expires=' + t.toUTCString()) + ( ! p ? '' : '; path=' + p) + ( ! d ? '' : '; domain=' + d) + ( ! s ? '' : '; secure') // Set cookie
   }
   ,
   Set1 : function(n, v, e, p, d, s)
   {
      var t = new Date;
      if(e)
      {
         // 8.64e7 一天 3.6e6 一小时
         t.setTime(t.getTime() + (e * 8.64e7));

      }
      document.cookie = n + '=' + encodeURIComponent(v) + '; ' + ( ! e ? '' : '; expires=' + t.toUTCString()) + ( ! p ? '' : '; path=' + p) + ( ! d ? '' : '; domain=' + d) + ( ! s ? '' : '; secure') // Set cookie
   }
   ,
   Del : function(n, p, d)
   {
      var t = cookie.Get(n);
      document.cookie = n + '=' + ( ! p ? '' : '; path=' + p) + ( ! d ? '' : '; domain=' + d) + '; expires=Thu, 01-Jan-70 00:00:01 GMT';
      return t
   }
}
;