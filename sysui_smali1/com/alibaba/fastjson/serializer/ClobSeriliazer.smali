.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 18
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    return-void

    .line 22
    :cond_6
    check-cast p2, Ljava/sql/Clob;

    .line 23
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_11} :catch_35

    const/16 p3, 0x800

    :try_start_13
    new-array p3, p3, [C

    .line 30
    :goto_15
    array-length p4, p3

    const/4 p5, 0x0

    invoke-virtual {p0, p3, p5, p4}, Ljava/io/Reader;->read([CII)I

    move-result p4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_2c

    if-gez p4, :cond_28

    .line 40
    :try_start_1d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/sql/SQLException; {:try_start_1d .. :try_end_27} :catch_35

    return-void

    .line 34
    :cond_28
    :try_start_28
    invoke-virtual {p2, p3, p5, p4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_15

    :catch_2c
    move-exception p0

    .line 37
    :try_start_2d
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "read string from reader error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_35
    .catch Ljava/sql/SQLException; {:try_start_2d .. :try_end_35} :catch_35

    :catch_35
    move-exception p0

    .line 44
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "write clob error"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
