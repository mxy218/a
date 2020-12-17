.class Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Lcom/meizu/common/util/ReflectUtils$IReflectClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReflectClass"
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectField;",
            ">;"
        }
    .end annotation
.end field

.field private mMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public field(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectField;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/ReflectUtils$IReflectField;

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_d
    if-eqz v1, :cond_19

    .line 146
    :try_start_f
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_19

    .line 144
    :catch_14
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_d

    :cond_19
    :goto_19
    if-eqz v0, :cond_27

    .line 154
    new-instance v1, Lcom/meizu/common/util/ReflectUtils$DefaultReflectField;

    invoke-direct {v1, v0}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectField;-><init>(Ljava/lang/reflect/Field;)V

    .line 155
    iget-object p0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_2d

    .line 152
    :cond_27
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1a

    .line 114
    array-length v1, p2

    if-lez v1, :cond_1a

    .line 115
    array-length v1, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    aget-object v3, p2, v2

    .line 116
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 119
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    if-nez v1, :cond_62

    const/4 v1, 0x0

    .line 123
    iget-object v2, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_2b
    if-eqz v2, :cond_37

    .line 125
    :try_start_2d
    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    goto :goto_37

    .line 123
    :catch_32
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_2b

    :cond_37
    :goto_37
    if-eqz v1, :cond_44

    .line 133
    new-instance p1, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;

    invoke-direct {p1, v1}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;-><init>(Ljava/lang/reflect/Method;)V

    .line 134
    iget-object p0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 131
    :cond_44
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    move-object p1, v1

    :goto_63
    return-object p1
.end method
