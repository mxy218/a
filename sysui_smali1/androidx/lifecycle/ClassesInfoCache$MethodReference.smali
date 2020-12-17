.class Landroidx/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodReference"
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput p1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    .line 207
    iput-object p2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    .line 208
    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 237
    const-class v2, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_2d

    .line 241
    :cond_10
    check-cast p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    .line 242
    iget v2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    iget v3, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    if-ne v2, v3, :cond_2b

    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 247
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method invokeCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 8

    .line 214
    :try_start_0
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-eq v0, v2, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    goto :goto_29

    .line 222
    :cond_c
    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 219
    :cond_18
    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {p0, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 216
    :cond_22
    iget-object p0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception p0

    .line 228
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_31
    move-exception p0

    .line 226
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "Failed to call observer method"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
