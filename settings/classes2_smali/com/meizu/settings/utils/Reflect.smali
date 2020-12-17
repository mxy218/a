.class public Lcom/meizu/settings/utils/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/utils/Reflect$ReflectException;
    }
.end annotation


# static fields
.field private static classCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static fieldCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static methodCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isClass:Z

.field private final object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/utils/Reflect;->classCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/utils/Reflect;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/utils/Reflect;->methodCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/meizu/settings/utils/Reflect;->isClass:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/meizu/settings/utils/Reflect;->isClass:Z

    return-void
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_24

    .line 126
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 128
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 129
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_24

    return-object p0

    .line 136
    :cond_24
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2e
    return-object p0
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/settings/utils/Reflect$ReflectException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/meizu/settings/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object p0

    .line 286
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 292
    :goto_10
    :try_start_10
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1a} :catch_1b

    return-object v1

    .line 296
    :catch_1b
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_22

    goto :goto_10

    .line 300
    :cond_22
    new-instance p0, Lcom/meizu/settings/utils/Reflect$ReflectException;

    invoke-direct {p0, v0}, Lcom/meizu/settings/utils/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/settings/utils/Reflect$ReflectException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 783
    :try_start_1
    sget-object v1, Lcom/meizu/settings/utils/Reflect;->classCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_d

    .line 784
    sget-object v0, Lcom/meizu/settings/utils/Reflect;->classCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :cond_d
    if-nez v0, :cond_18

    .line 788
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 789
    sget-object v1, Lcom/meizu/settings/utils/Reflect;->classCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    :cond_18
    return-object v0

    :catch_19
    move-exception p0

    .line 795
    new-instance v0, Lcom/meizu/settings/utils/Reflect$ReflectException;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static on(Ljava/lang/Class;)Lcom/meizu/settings/utils/Reflect;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/meizu/settings/utils/Reflect;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/meizu/settings/utils/Reflect;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/Reflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lcom/meizu/settings/utils/Reflect;
    .registers 2

    .line 108
    new-instance v0, Lcom/meizu/settings/utils/Reflect;

    invoke-direct {v0, p0}, Lcom/meizu/settings/utils/Reflect;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/meizu/settings/utils/Reflect;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/settings/utils/Reflect$ReflectException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/meizu/settings/utils/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/Reflect;->on(Ljava/lang/Class;)Lcom/meizu/settings/utils/Reflect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 689
    instance-of v0, p1, Lcom/meizu/settings/utils/Reflect;

    if-eqz v0, :cond_11

    .line 690
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/utils/Reflect;

    invoke-virtual {p1}, Lcom/meizu/settings/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public field(Ljava/lang/String;)Lcom/meizu/settings/utils/Reflect;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/settings/utils/Reflect$ReflectException;
        }
    .end annotation

    .line 264
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/settings/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 266
    sget-object v2, Lcom/meizu/settings/utils/Reflect;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_29

    .line 267
    sget-object v1, Lcom/meizu/settings/utils/Reflect;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    :cond_29
    if-nez v1, :cond_34

    .line 271
    invoke-direct {p0, p1}, Lcom/meizu/settings/utils/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 272
    sget-object p1, Lcom/meizu/settings/utils/Reflect;->fieldCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_34
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/Reflect;->on(Ljava/lang/Object;)Lcom/meizu/settings/utils/Reflect;

    move-result-object p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    move-exception p0

    .line 277
    new-instance p1, Lcom/meizu/settings/utils/Reflect$ReflectException;

    invoke-direct {p1, p0}, Lcom/meizu/settings/utils/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/settings/utils/Reflect$ReflectException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0, p1}, Lcom/meizu/settings/utils/Reflect;->field(Ljava/lang/String;)Lcom/meizu/settings/utils/Reflect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 701
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 814
    iget-boolean v0, p0, Lcom/meizu/settings/utils/Reflect;->isClass:Z

    if-eqz v0, :cond_9

    .line 815
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 818
    :cond_9
    iget-object p0, p0, Lcom/meizu/settings/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
