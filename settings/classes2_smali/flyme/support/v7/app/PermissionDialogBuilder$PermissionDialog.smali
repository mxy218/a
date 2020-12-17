.class Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;
.super Lflyme/support/v7/app/AlertDialog;
.source "PermissionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/PermissionDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionDialog"
.end annotation


# instance fields
.field private mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 327
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 328
    iput-object p3, p0, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;->mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;Lflyme/support/v7/app/PermissionDialogBuilder$1;)V
    .registers 5

    .line 322
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;-><init>(Landroid/content/Context;ILflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;)V

    return-void
.end method

.method private isPerformanceTest()Z
    .registers 7

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "android.os.SystemProperties"

    .line 360
    invoke-static {v0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 361
    invoke-interface {v0, v1, v3}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "debug.perf.applunch"

    aput-object v3, v2, p0

    .line 362
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_30

    :catch_30
    return p0
.end method

.method private isProductInternational()Z
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "android.os.BuildExt"

    .line 344
    invoke-static {v0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v0

    const-string v1, "isProductInternational"

    new-array v2, p0, [Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, p0, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    return p0
.end method

.method private isShopDemo()Z
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "android.os.BuildExt"

    .line 352
    invoke-static {v0}, Lcom/meizu/common/util/ReflectUtils;->from(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object v0

    const-string v1, "isShopDemoVersion"

    new-array v2, p0, [Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectClass;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, p0, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    return p0
.end method


# virtual methods
.method public show()V
    .registers 4

    .line 333
    invoke-direct {p0}, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;->isPerformanceTest()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;->isShopDemo()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    .line 338
    :cond_13
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_20

    .line 334
    :cond_17
    :goto_17
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;->mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 335
    invoke-interface {v0, p0, v1, v2}, Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;->onPermissionClick(Landroid/content/DialogInterface;ZZ)V

    :cond_20
    :goto_20
    return-void
.end method
