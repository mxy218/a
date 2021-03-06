.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>()V

    if-eqz p1, :cond_e

    .line 80
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_16

    :cond_e
    const-string p1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    .line 82
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    .line 84
    :goto_16
    new-instance p1, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const-string v0, "path"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 85
    new-instance p1, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/NetscapeDomainHandler;-><init>()V

    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 86
    new-instance p1, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 87
    new-instance p1, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const-string v0, "secure"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 88
    new-instance p1, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {p1}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const-string v0, "comment"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    .line 89
    new-instance p1, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const-string v0, "expires"

    invoke-virtual {p0, v0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    return-void
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_60

    .line 156
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_58

    .line 159
    new-instance p0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const-string v0, "Cookie"

    .line 160
    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v0, ": "

    .line 161
    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 163
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    if-lez v0, :cond_31

    const-string v2, "; "

    .line 165
    invoke-virtual {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 167
    :cond_31
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    const-string v2, "="

    .line 170
    invoke-virtual {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 174
    :cond_49
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, p0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 157
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List of cookies may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "List of cookies may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    if-eqz p1, :cond_58

    if-eqz p2, :cond_50

    .line 132
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    .line 135
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 136
    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 137
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    .line 138
    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result p1

    .line 139
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_3a

    .line 141
    :cond_1f
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 145
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 146
    invoke-virtual {v1, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 147
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    :goto_3a
    const/4 p1, 0x1

    new-array p1, p1, [Lorg/apache/http/HeaderElement;

    .line 149
    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 143
    :cond_48
    new-instance p0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string p1, "Header value is null"

    invoke-direct {p0, p1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cookie origin may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_58
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Header may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
