.class public Lorg/apache/http/message/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lorg/apache/http/Header;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 94
    iput-object p1, p0, Lorg/apache/http/message/BasicHeader;->name:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lorg/apache/http/message/BasicHeader;->value:Ljava/lang/String;

    return-void

    .line 92
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getElements()[Lorg/apache/http/HeaderElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lorg/apache/http/message/BasicHeader;->value:Ljava/lang/String;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 138
    invoke-static {p0, v0}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/http/HeaderElement;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lorg/apache/http/message/BasicHeader;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 113
    iget-object p0, p0, Lorg/apache/http/message/BasicHeader;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    sget-object v0, Lorg/apache/http/message/BasicLineFormatter;->DEFAULT:Lorg/apache/http/message/BasicLineFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lorg/apache/http/message/BasicLineFormatter;->formatHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/Header;)Lorg/apache/http/util/CharArrayBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
