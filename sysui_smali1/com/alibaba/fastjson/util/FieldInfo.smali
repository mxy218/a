.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p8, 0x0

    .line 24
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 57
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 59
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 60
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 61
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 62
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 64
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz p5, :cond_3a

    .line 67
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p2

    and-int/lit8 p3, p2, 0x1

    if-nez p3, :cond_30

    .line 68
    iget-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez p3, :cond_2e

    goto :goto_30

    :cond_2e
    move p3, p8

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p3, 0x1

    :goto_31
    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 69
    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_3e

    .line 71
    :cond_3a
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 72
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 75
    :goto_3e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz p5, :cond_49

    .line 78
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_49
    const-string p2, ""

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 83
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 84
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 85
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-eqz p3, :cond_13

    .line 101
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object p1, v1

    .line 107
    :cond_13
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 109
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 110
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 111
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 112
    iput p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 113
    iput-object p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 114
    iput-object p10, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    const/4 p1, 0x1

    if-eqz p3, :cond_3d

    .line 117
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p6

    and-int/lit8 p7, p6, 0x1

    if-nez p7, :cond_33

    if-nez p2, :cond_31

    goto :goto_33

    :cond_31
    move p7, v0

    goto :goto_34

    :cond_33
    :goto_33
    move p7, p1

    .line 118
    :goto_34
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 119
    invoke-static {p6}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p6

    iput-boolean p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_41

    .line 121
    :cond_3d
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 122
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_41
    if-eqz p11, :cond_4c

    .line 125
    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p6

    if-lez p6, :cond_4c

    .line 126
    iput-object p11, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto :goto_50

    :cond_4c
    const-string p6, ""

    .line 128
    iput-object p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 132
    :goto_50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p6

    const/4 p7, 0x0

    if-eqz p6, :cond_6c

    .line 136
    invoke-interface {p6}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object p8

    .line 138
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p9

    if-nez p9, :cond_66

    goto :goto_67

    :cond_66
    move-object p7, p8

    .line 141
    :goto_67
    invoke-interface {p6}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result p6

    goto :goto_6d

    :cond_6c
    move p6, v0

    .line 145
    :goto_6d
    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object p7

    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    if-eqz p2, :cond_7a

    .line 150
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7a
    if-eqz p3, :cond_7f

    .line 154
    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    :cond_7f
    if-eqz p2, :cond_a5

    .line 162
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p7, p3

    if-ne p7, p1, :cond_93

    .line 163
    aget-object p3, p3, v0

    .line 164
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p7

    aget-object p7, p7, v0

    move-object p8, p7

    move p7, v0

    goto :goto_9d

    .line 166
    :cond_93
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    .line 167
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p7

    move-object p8, p7

    move p7, p1

    .line 170
    :goto_9d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    move-object p2, p3

    goto :goto_bb

    .line 172
    :cond_a5
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    .line 173
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p8

    .line 174
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p7

    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 175
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p7

    .line 177
    :goto_bb
    iput-boolean p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz p6, :cond_c4

    .line 178
    const-class p3, Ljava/lang/String;

    if-ne p2, p3, :cond_c4

    goto :goto_c5

    :cond_c4
    move p1, v0

    :goto_c5
    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    if-eqz p4, :cond_e9

    .line 180
    const-class p1, Ljava/lang/Object;

    if-ne p2, p1, :cond_e9

    instance-of p1, p8, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_e9

    .line 181
    move-object p1, p8

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 182
    invoke-static {p4, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_e9

    .line 184
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 185
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 187
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void

    .line 194
    :cond_e9
    instance-of p1, p8, Ljava/lang/Class;

    if-nez p1, :cond_109

    if-eqz p5, :cond_f0

    goto :goto_f1

    :cond_f0
    move-object p5, p4

    .line 195
    :goto_f1
    invoke-static {p4, p5, p8}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    if-eq p1, p8, :cond_10a

    .line 198
    instance-of p3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_100

    .line 199
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_10a

    .line 200
    :cond_100
    instance-of p3, p1, Ljava/lang/Class;

    if-eqz p3, :cond_10a

    .line 201
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    goto :goto_10a

    :cond_109
    move-object p1, p8

    .line 206
    :cond_10a
    :goto_10a
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 207
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 209
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_d9

    if-nez p1, :cond_6

    goto/16 :goto_d9

    .line 245
    :cond_6
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 246
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 247
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 248
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_25

    .line 250
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_25
    return-object p2

    .line 257
    :cond_26
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_2d

    return-object p2

    .line 261
    :cond_2d
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_60

    .line 262
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 263
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 264
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 266
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    move v4, v1

    .line 267
    :goto_43
    array-length v5, v2

    if-ge v4, v5, :cond_60

    .line 268
    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 269
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v4

    return-object p0

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 275
    :cond_60
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_d9

    .line 276
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 278
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 284
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v3, :cond_77

    .line 285
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 286
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_90

    .line 287
    :cond_77
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_8e

    .line 288
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 289
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_90

    :cond_8e
    move-object p0, v4

    move-object p1, p0

    :goto_90
    move v3, v1

    move-object v5, v4

    move v4, v3

    .line 292
    :goto_93
    array-length v6, v2

    if-ge v3, v6, :cond_c9

    if-eqz p1, :cond_c9

    .line 293
    aget-object v6, v2, v3

    .line 294
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_c6

    .line 295
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    move-object v7, v5

    move v5, v4

    move v4, v1

    .line 297
    :goto_a3
    array-length v8, p0

    if-ge v4, v8, :cond_c4

    .line 298
    aget-object v8, p0, v4

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c1

    if-nez v7, :cond_bc

    .line 300
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 302
    :cond_bc
    aget-object v5, v7, v4

    aput-object v5, v2, v3

    const/4 v5, 0x1

    :cond_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_a3

    :cond_c4
    move v4, v5

    move-object v5, v7

    :cond_c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_c9
    if-eqz v4, :cond_d9

    .line 309
    new-instance p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 310
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_d9
    :goto_d9
    return-object p2
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 322
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return-object v1

    .line 326
    :cond_c
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_30

    .line 327
    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 328
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v3, v0, :cond_30

    .line 329
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    .line 330
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v2, 0x0

    .line 331
    :goto_22
    array-length v3, p0

    if-ge v2, v3, :cond_2f

    .line 332
    aget-object v3, p0, v2

    if-ne v3, p1, :cond_2c

    aget-object p0, v0, v2

    return-object p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2f
    return-object v1

    .line 337
    :cond_30
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    if-nez p0, :cond_37

    return-object v1

    :cond_37
    move-object p0, v2

    goto :goto_4
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .registers 8

    .line 367
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    .line 375
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    return v0

    .line 381
    :cond_17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    if-eq v0, v1, :cond_33

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2c

    return v2

    .line 389
    :cond_2c
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_33

    return v3

    .line 394
    :cond_33
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v0, v4, :cond_42

    move v0, v3

    goto :goto_43

    :cond_42
    move v0, v1

    .line 395
    :goto_43
    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_50

    move v1, v3

    :cond_50
    if-eqz v0, :cond_55

    if-nez v1, :cond_55

    return v3

    :cond_55
    if-eqz v1, :cond_5a

    if-nez v0, :cond_5a

    return v2

    .line 405
    :cond_5a
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6b

    return v3

    .line 409
    :cond_6b
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_7c

    return v2

    .line 413
    :cond_7c
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    return v3

    .line 417
    :cond_97
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0

    return v2

    .line 421
    :cond_b0
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p0

    return p0
.end method

.method protected genFieldNameChars()[C
    .registers 6

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 214
    new-array v1, v1, [C

    .line 215
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/16 p0, 0x22

    .line 216
    aput-char p0, v1, v4

    add-int/lit8 v2, v0, 0x1

    .line 217
    aput-char p0, v1, v2

    add-int/lit8 v0, v0, 0x2

    const/16 p0, 0x3a

    .line 218
    aput-char p0, v1, v0

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 438
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 442
    :cond_c
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 224
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-ne p1, v0, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_12

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_1c

    .line 233
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_1c

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_5

    return-object v0

    .line 429
    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object p0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 356
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 359
    :cond_9
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_12

    .line 360
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    return-object v0

    .line 350
    :cond_5
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, p0, v1

    .line 447
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 451
    :cond_e
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAccessible()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    .line 456
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    return-void

    .line 460
    :cond_8
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 343
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object p0
.end method
