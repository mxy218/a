.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string p0, "Path deserialize erorr"

    .line 151
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 153
    const-class v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0xd

    const/16 v2, 0x10

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p2, v0, :cond_79

    .line 154
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    const/16 p2, 0x8

    if-ne p0, p2, :cond_1d

    .line 155
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v4

    :cond_1d
    const/16 p0, 0xc

    .line 159
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 164
    :goto_22
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string p2, "address"

    .line 167
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 168
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 169
    const-class p0, Ljava/net/InetAddress;

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    move-object v4, p0

    goto :goto_66

    :cond_3e
    const-string p2, "port"

    .line 170
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 171
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 172
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    if-ne p0, v5, :cond_58

    .line 175
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p0

    .line 176
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move v6, p0

    goto :goto_66

    .line 173
    :cond_58
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "port is not int"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_60
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 182
    :goto_66
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    if-ne p0, v2, :cond_70

    .line 183
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_22

    .line 190
    :cond_70
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 192
    new-instance p0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v4, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object p0

    .line 197
    :cond_79
    iget v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v0, v5, :cond_b3

    .line 198
    iput v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 199
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 201
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v2, 0x4

    const-string/jumbo v7, "syntax error"

    if-ne v0, v2, :cond_ad

    .line 202
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "val"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 205
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 210
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 214
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_b7

    .line 203
    :cond_a7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_ad
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p0, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_b3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    :goto_b7
    if-nez v0, :cond_bb

    move-object v0, v4

    goto :goto_c1

    .line 223
    :cond_bb
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_210

    .line 224
    check-cast v0, Ljava/lang/String;

    :goto_c1
    if-eqz v0, :cond_20f

    .line 229
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_cb

    goto/16 :goto_20f

    .line 233
    :cond_cb
    const-class v1, Ljava/util/UUID;

    if-ne p2, v1, :cond_d4

    .line 234
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 237
    :cond_d4
    const-class v1, Ljava/net/URI;

    if-ne p2, v1, :cond_dd

    .line 238
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 241
    :cond_dd
    const-class v1, Ljava/net/URL;

    if-ne p2, v1, :cond_f0

    .line 243
    :try_start_e1
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/net/MalformedURLException; {:try_start_e1 .. :try_end_e6} :catch_e7

    return-object p0

    :catch_e7
    move-exception p0

    .line 245
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "create url error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 249
    :cond_f0
    const-class v1, Ljava/util/regex/Pattern;

    if-ne p2, v1, :cond_f9

    .line 250
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    .line 253
    :cond_f9
    const-class v1, Ljava/util/Locale;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_128

    const-string p0, "_"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 256
    array-length p1, p0

    if-ne p1, v2, :cond_10f

    .line 257
    new-instance p1, Ljava/util/Locale;

    aget-object p0, p0, v6

    invoke-direct {p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 260
    :cond_10f
    array-length p1, p0

    if-ne p1, v5, :cond_11c

    .line 261
    new-instance p1, Ljava/util/Locale;

    aget-object p2, p0, v6

    aget-object p0, p0, v2

    invoke-direct {p1, p2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 264
    :cond_11c
    new-instance p1, Ljava/util/Locale;

    aget-object p2, p0, v6

    aget-object p3, p0, v2

    aget-object p0, p0, v5

    invoke-direct {p1, p2, p3, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 267
    :cond_128
    const-class v1, Ljava/text/SimpleDateFormat;

    if-ne p2, v1, :cond_13d

    .line 268
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 269
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0

    .line 273
    :cond_13d
    const-class p3, Ljava/net/InetAddress;

    if-eq p2, p3, :cond_201

    const-class p3, Ljava/net/Inet4Address;

    if-eq p2, p3, :cond_201

    const-class p3, Ljava/net/Inet6Address;

    if-ne p2, p3, :cond_14b

    goto/16 :goto_201

    .line 281
    :cond_14b
    const-class p3, Ljava/io/File;

    if-ne p2, p3, :cond_155

    .line 282
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 285
    :cond_155
    const-class p3, Ljava/util/TimeZone;

    if-ne p2, p3, :cond_15e

    .line 286
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 289
    :cond_15e
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_168

    .line 290
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 291
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 294
    :cond_168
    const-class p3, Ljava/lang/Class;

    if-ne p2, p3, :cond_179

    .line 295
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 298
    :cond_179
    const-class p1, Ljava/nio/charset/Charset;

    if-ne p2, p1, :cond_182

    .line 299
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    .line 302
    :cond_182
    const-class p1, Ljava/util/Currency;

    if-ne p2, p1, :cond_18b

    .line 303
    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    .line 306
    :cond_18b
    const-class p1, Lcom/alibaba/fastjson/JSONPath;

    if-ne p2, p1, :cond_195

    .line 307
    new-instance p0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 310
    :cond_195
    invoke-interface {p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.nio.file.Path"

    .line 312
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1ea

    .line 314
    :try_start_1a1
    sget-object p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez p2, :cond_1c1

    sget-boolean p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez p2, :cond_1c1

    const-string p2, "java.nio.file.Paths"

    .line 315
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "get"

    new-array v1, v5, [Ljava/lang/Class;

    .line 316
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v6

    const-class v3, [Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    sput-object p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    .line 318
    :cond_1c1
    sget-object p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1d4

    .line 319
    sget-object p2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    new-array p3, v5, [Ljava/lang/Object;

    aput-object v0, p3, v6

    new-array v0, v6, [Ljava/lang/String;

    aput-object v0, p3, v2

    invoke-virtual {p2, v4, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 322
    :cond_1d4
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1da
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1a1 .. :try_end_1da} :catch_1e8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a1 .. :try_end_1da} :catch_1e1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a1 .. :try_end_1da} :catch_1da

    :catch_1da
    move-exception p1

    .line 328
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1e1
    move-exception p1

    .line 326
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 324
    :catch_1e8
    sput-boolean v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 332
    :cond_1ea
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MiscCodec not support "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_201
    :goto_201
    :try_start_201
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_205
    .catch Ljava/net/UnknownHostException; {:try_start_201 .. :try_end_205} :catch_206

    return-object p0

    :catch_206
    move-exception p0

    .line 277
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "deserialize inet adress error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_20f
    :goto_20f
    return-object v4

    .line 226
    :cond_210
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "expect string"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_8

    .line 65
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    .line 69
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    .line 72
    const-class v0, Ljava/text/SimpleDateFormat;

    const/16 v1, 0x7d

    const/16 v2, 0x2c

    const/16 v3, 0x7b

    if-ne p5, v0, :cond_48

    .line 73
    move-object p0, p2

    check-cast p0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p0

    .line 75
    sget-object p5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p5

    if-eqz p5, :cond_a8

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    if-eq p5, p4, :cond_a8

    .line 77
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    sget-object p4, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string/jumbo p1, "val"

    .line 80
    invoke-virtual {p3, v2, p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 87
    :cond_48
    const-class p4, Ljava/lang/Class;

    if-ne p5, p4, :cond_53

    .line 88
    check-cast p2, Ljava/lang/Class;

    .line 89
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 90
    :cond_53
    const-class p4, Ljava/net/InetSocketAddress;

    if-ne p5, p4, :cond_7d

    .line 91
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 93
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    .line 95
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz p0, :cond_6d

    const-string p4, "address"

    .line 97
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_6d
    const-string p0, "port"

    .line 101
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 103
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 105
    :cond_7d
    instance-of p4, p2, Ljava/io/File;

    if-eqz p4, :cond_88

    .line 106
    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 107
    :cond_88
    instance-of p4, p2, Ljava/net/InetAddress;

    if-eqz p4, :cond_93

    .line 108
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 109
    :cond_93
    instance-of p4, p2, Ljava/util/TimeZone;

    if-eqz p4, :cond_9e

    .line 110
    check-cast p2, Ljava/util/TimeZone;

    .line 111
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    goto :goto_a8

    .line 112
    :cond_9e
    instance-of p4, p2, Ljava/util/Currency;

    if-eqz p4, :cond_ac

    .line 113
    check-cast p2, Ljava/util/Currency;

    .line 114
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    .line 131
    :cond_a8
    :goto_a8
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_ac
    instance-of p4, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz p4, :cond_b6

    .line 116
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 117
    invoke-interface {p2, p3}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    return-void

    .line 119
    :cond_b6
    instance-of p4, p2, Ljava/util/Iterator;

    if-eqz p4, :cond_c0

    .line 120
    check-cast p2, Ljava/util/Iterator;

    .line 121
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    return-void

    .line 123
    :cond_c0
    instance-of p4, p2, Ljava/lang/Iterable;

    if-eqz p4, :cond_ce

    .line 124
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 125
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    return-void

    .line 128
    :cond_ce
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "not support class : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    const/16 p0, 0x5b

    .line 136
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 p0, 0x0

    .line 137
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_13

    const/16 v0, 0x2c

    .line 139
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 141
    :cond_13
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_1d
    const/16 p0, 0x5d

    .line 145
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void
.end method
