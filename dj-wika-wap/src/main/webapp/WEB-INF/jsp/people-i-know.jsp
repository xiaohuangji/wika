<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html nobar="true">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="
    width=device-width,
    initial-scale=1,
    minimum-scale=1,
    maximum-scale=1,
    user-scalable=no">
  <!-- 项目公用静态文件 -->
  <%@include file="../include/base-style.html"%>

<trial:assertcss files="/up/dj-mobile/vcard/css/people-i-know.css"/>
<trial:assertjs files="/up/dj-mobile/vcard/lib/ajax-limit.js" />

  <!-- 本页样式 -->
  <%@include file="../include/mycard-skin.html"%>
<!--   <link rel="stylesheet" href="http://assets.dajieimg.com.wika/up/dj-mobile/vcard/css/people-i-know.css"/>
  <script type="text/javascript" src="http://assets.dajieimg.com.wika/up/dj-mobile/vcard/lib/ajax-limit.js"></script> -->
  <title>${userbase.name}的微卡</title>
      <!-- 微信分享配置-->
  <%@include file="../include/shareweixin3.html"%>
</head>
<body>
<div class="dj-base-wrap">
  <div class="p-wrap">
    <section class="i-mycard">
      <div id="jp-mycard"><span class="loading"></span></div>
    </section>
    <aside class="p-aside">
      <a class="p-btn p-f11" href="http://mp.weixin.qq.com/mp/appmsg/show?__biz=MzA4OTE2NDYyNw==&appmsgid=10000087&itemidx=1&sign=b319f7ede049a2b60351bb828c2c37f8#wechat_redirect">关注公众帐号，立刻有惊喜！</a>
      <a class="i-btn p-btn" href="/system/download?sId=1">保存到手机通讯录</a>
      <form action="/relation/unfollow-service" method="post">
        <!-- 删除的话会直接提交这个表单 -->
        <input type="hidden" value="${userbase.userId}" name="id"/>
        <input type="submit" id="fp-submit" style="display:none;"/>
        <label for="fp-submit" class="i-btn-del p-btn">从联系人中移除</label>
      </form>
      <p>
        微卡——让每一张名片都能扫<br/>
        欢迎关注我们的微信公众号:<a href="http://mp.weixin.qq.com/mp/appmsg/show?__biz=MzA4OTE2NDYyNw==&appmsgid=10000087&itemidx=1&sign=b319f7ede049a2b60351bb828c2c37f8#wechat_redirect">微卡</a><br/>
        ==============================<br/>
        Apple Store或Google Play中搜索"微卡"<br/>
        下载<a href="/system/download?sId=5">微卡应用</a>，助力成功人生
      </p>
    </aside>
  </div>
  <c:if test="${wx==1}">
    <!-- 引入底部导航 -->
  <%@include file="../include/foot-nav.html"%>
  </c:if>
</div>
</body>
</html>