.class Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Lcom/meizu/common/util/ReflectUtils$IReflectMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReflectMethod"
.end annotation


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    .line 191
    iget-object p0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
