.class public Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;
.super Ljava/lang/Object;
.source "FastJsonpResponseBodyAdvice.java"

# interfaces
.implements Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/web/servlet/mvc/method/annotation/ResponseBodyAdvice<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final jsonpQueryParamNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[0-9A-Za-z_\\.]*"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "At least one query param name is required"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public beforeBodyWrite(Ljava/lang/Object;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/MediaType;Ljava/lang/Class;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/springframework/core/MethodParameter;",
            "Lorg/springframework/http/MediaType;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;",
            "Lorg/springframework/http/server/ServerHttpRequest;",
            "Lorg/springframework/http/server/ServerHttpResponse;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    move-result-object p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p6

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V

    return-object p1
.end method

.method public beforeBodyWriteInternal(Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;Lorg/springframework/http/MediaType;Lorg/springframework/core/MethodParameter;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)V
    .registers 11

    .line 68
    move-object p3, p4

    check-cast p3, Lorg/springframework/http/server/ServletServerHttpRequest;

    invoke-virtual {p3}, Lorg/springframework/http/server/ServletServerHttpRequest;->getServletRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object p3

    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->jsonpQueryParamNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 70
    invoke-interface {p3, v3}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 72
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->isValidJsonpQueryParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_2b

    .line 75
    :cond_1c
    invoke-virtual {p0, p2, p4, p5}, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;

    move-result-object p0

    .line 76
    invoke-interface {p5}, Lorg/springframework/http/server/ServerHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 77
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->setJsonpFunction(Ljava/lang/String;)V

    goto :goto_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2e
    :goto_2e
    return-void
.end method

.method protected getContentType(Lorg/springframework/http/MediaType;Lorg/springframework/http/server/ServerHttpRequest;Lorg/springframework/http/server/ServerHttpResponse;)Lorg/springframework/http/MediaType;
    .registers 4

    .line 104
    new-instance p0, Lorg/springframework/http/MediaType;

    const-string p1, "application"

    const-string p2, "javascript"

    invoke-direct {p0, p1, p2}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getOrCreateContainer(Ljava/lang/Object;)Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;
    .registers 2

    .line 60
    instance-of p0, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-eqz p0, :cond_8

    check-cast p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    move-object p0, p1

    goto :goto_d

    :cond_8
    new-instance p0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;-><init>(Ljava/lang/Object;)V

    :goto_d
    return-object p0
.end method

.method protected isValidJsonpQueryParam(Ljava/lang/String;)Z
    .registers 2

    .line 91
    sget-object p0, Lcom/alibaba/fastjson/support/spring/FastJsonpResponseBodyAdvice;->CALLBACK_PARAM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public supports(Lorg/springframework/core/MethodParameter;Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/core/MethodParameter;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/springframework/http/converter/HttpMessageConverter<",
            "*>;>;)Z"
        }
    .end annotation

    .line 43
    const-class p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
