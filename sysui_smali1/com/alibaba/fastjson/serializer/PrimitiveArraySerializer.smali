.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "PrimitiveArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object p0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_a

    .line 32
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    .line 36
    :cond_a
    instance-of p1, p2, [I

    const/16 p3, 0x2c

    const/16 p4, 0x5d

    const/4 p5, 0x0

    const/16 v0, 0x5b

    if-eqz p1, :cond_2e

    .line 37
    check-cast p2, [I

    .line 38
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 39
    :goto_1a
    array-length p1, p2

    if-ge p5, p1, :cond_2a

    if-eqz p5, :cond_22

    .line 41
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 43
    :cond_22
    aget p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1a

    .line 45
    :cond_2a
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 49
    :cond_2e
    instance-of p1, p2, [S

    if-eqz p1, :cond_4b

    .line 50
    check-cast p2, [S

    .line 51
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 52
    :goto_37
    array-length p1, p2

    if-ge p5, p1, :cond_47

    if-eqz p5, :cond_3f

    .line 54
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 56
    :cond_3f
    aget-short p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_37

    .line 58
    :cond_47
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 62
    :cond_4b
    instance-of p1, p2, [J

    if-eqz p1, :cond_68

    .line 63
    check-cast p2, [J

    .line 65
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    :goto_54
    array-length p1, p2

    if-ge p5, p1, :cond_64

    if-eqz p5, :cond_5c

    .line 68
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 70
    :cond_5c
    aget-wide v0, p2, p5

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_54

    .line 72
    :cond_64
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 76
    :cond_68
    instance-of p1, p2, [Z

    if-eqz p1, :cond_85

    .line 77
    check-cast p2, [Z

    .line 78
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 79
    :goto_71
    array-length p1, p2

    if-ge p5, p1, :cond_81

    if-eqz p5, :cond_79

    .line 81
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_79
    aget-boolean p1, p2, p5

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_71

    .line 85
    :cond_81
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 89
    :cond_85
    instance-of p1, p2, [F

    if-eqz p1, :cond_b0

    .line 90
    check-cast p2, [F

    .line 91
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    :goto_8e
    array-length p1, p2

    if-ge p5, p1, :cond_ac

    if-eqz p5, :cond_96

    .line 94
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 97
    :cond_96
    aget p1, p2, p5

    .line 98
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_a9

    .line 101
    :cond_a2
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_a9
    add-int/lit8 p5, p5, 0x1

    goto :goto_8e

    .line 104
    :cond_ac
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 108
    :cond_b0
    instance-of p1, p2, [D

    if-eqz p1, :cond_db

    .line 109
    check-cast p2, [D

    .line 110
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    :goto_b9
    array-length p1, p2

    if-ge p5, p1, :cond_d7

    if-eqz p5, :cond_c1

    .line 113
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 116
    :cond_c1
    aget-wide v0, p2, p5

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_d4

    .line 120
    :cond_cd
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_d4
    add-int/lit8 p5, p5, 0x1

    goto :goto_b9

    .line 123
    :cond_d7
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 127
    :cond_db
    instance-of p1, p2, [B

    if-eqz p1, :cond_e5

    .line 128
    check-cast p2, [B

    .line 129
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    return-void

    .line 133
    :cond_e5
    check-cast p2, [C

    .line 134
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method
