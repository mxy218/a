.class public Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;
.super Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;
.source "FastJsonpHttpMessageConverter4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final JSONP_FUNCTION_PREFIX_BYTES:[B

.field private static final JSONP_FUNCTION_SUFFIX_BYTES:[B


# instance fields
.field private fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 156
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const-string v1, "/**/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const-string v1, ");"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 105
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractGenericHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 82
    new-instance v0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method


# virtual methods
.method public getFastJsonConfig()Lcom/alibaba/fastjson/support/config/FastJsonConfig;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-object p0
.end method

.method public read(Ljava/lang/reflect/Type;Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .line 118
    invoke-interface {p3}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object p2

    .line 119
    iget-object p3, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    iget-object p0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    invoke-static {p2, p3, p1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .line 126
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p0

    invoke-static {p2, v0, p1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setFastJsonConfig(Lcom/alibaba/fastjson/support/config/FastJsonConfig;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    return-void
.end method

.method protected supports(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected writeInternal(Ljava/lang/Object;Ljava/lang/reflect/Type;Lorg/springframework/http/HttpOutputMessage;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .line 133
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object p2

    .line 134
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    invoke-virtual {p0, v8, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->writePrefix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I

    move-result v9

    .line 137
    instance-of v0, p1, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-eqz v0, :cond_1a

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1b

    :cond_1a
    move-object v2, p1

    .line 141
    :goto_1b
    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 145
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 146
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iget-object v0, p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->fastJsonConfig:Lcom/alibaba/fastjson/support/config/FastJsonConfig;

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    move-object v0, v8

    .line 141
    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    add-int/2addr v9, v0

    .line 149
    invoke-virtual {p0, v8, p1}, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->writeSuffix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v9, p0

    int-to-long p0, v9

    .line 150
    invoke-virtual {p2, p0, p1}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 151
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object p0

    .line 152
    invoke-virtual {v8, p0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 153
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method protected writePrefix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    instance-of p0, p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-eqz p0, :cond_b

    check-cast p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 164
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const/4 p2, 0x0

    if-eqz p0, :cond_34

    .line 167
    sget-object v0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 169
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 170
    sget-object p1, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_PREFIX_BYTES:[B

    array-length p1, p1

    array-length p0, p0

    add-int/2addr p1, p0

    add-int/2addr p2, p1

    :cond_34
    return p2
.end method

.method protected writeSuffix(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    instance-of p0, p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    if-eqz p0, :cond_b

    check-cast p2, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;

    .line 180
    invoke-virtual {p2}, Lcom/alibaba/fastjson/support/spring/MappingFastJsonValue;->getJsonpFunction()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const/4 p2, 0x0

    if-eqz p0, :cond_18

    .line 183
    sget-object p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 184
    sget-object p0, Lcom/alibaba/fastjson/support/spring/FastJsonpHttpMessageConverter4;->JSONP_FUNCTION_SUFFIX_BYTES:[B

    array-length p0, p0

    add-int/2addr p2, p0

    :cond_18
    return p2
.end method
