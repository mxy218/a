.class public Lflyme/support/v7/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ViewUtils$InitThread;
    }
.end annotation


# static fields
.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

.field private static sInitState:I

.field private static sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lflyme/support/v7/widget/ViewUtils$InitThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ViewUtils$InitThread;-><init>(Lflyme/support/v7/widget/ViewUtils$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 65
    sput v0, Lflyme/support/v7/widget/ViewUtils;->sInitState:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 34
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->getMakeOptionalFitsSystemWindowsMethod()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 34
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->getComputeFitSystemWindowsMethod()V

    return-void
.end method

.method static synthetic access$502(I)I
    .registers 1

    .line 34
    sput p0, Lflyme/support/v7/widget/ViewUtils;->sInitState:I

    return p0
.end method

.method public static combineMeasuredStates(II)I
    .registers 2

    or-int/2addr p0, p1

    return p0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .line 113
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const/4 v2, 0x2

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    .line 115
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception p0

    const-string p1, "ViewUtils"

    const-string p2, "Could not invoke computeFitSystemWindows"

    .line 117
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    return v1
.end method

.method private static getComputeFitSystemWindowsMethod()V
    .registers 5

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_32

    .line 182
    :try_start_6
    const-class v0, Landroid/view/View;

    const-string v1, "computeFitSystemWindows"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    const-class v3, Landroid/graphics/Rect;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 184
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_32

    .line 185
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    const-string v0, "ViewUtils"

    const-string v1, "Could not find method computeFitSystemWindows. Oh well."

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method private static getMakeOptionalFitsSystemWindowsMethod()V
    .registers 3

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_25

    .line 199
    :try_start_6
    const-class v0, Landroid/view/View;

    const-string v1, "makeOptionalFitsSystemWindows"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 203
    :cond_1b
    sput-object v0, Lflyme/support/v7/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    const-string v0, "ViewUtils"

    const-string v1, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void
.end method

.method public static init()V
    .registers 2

    .line 72
    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    sget-object v0, Lflyme/support/v7/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1b

    :cond_8
    sget v0, Lflyme/support/v7/widget/ViewUtils;->sInitState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    if-nez v0, :cond_1b

    .line 74
    :cond_f
    new-instance v0, Lflyme/support/v7/widget/ViewUtils$InitThread;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ViewUtils$InitThread;-><init>(Lflyme/support/v7/widget/ViewUtils$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 75
    sput v0, Lflyme/support/v7/widget/ViewUtils;->sInitState:I

    :cond_1b
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 82
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .registers 5

    const-string v0, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v1, "ViewUtils"

    .line 152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_40

    .line 156
    :try_start_a
    sget-object v2, Lflyme/support/v7/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2a

    .line 157
    sget v2, Lflyme/support/v7/widget/ViewUtils;->sInitState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 158
    new-instance v2, Lflyme/support/v7/widget/ViewUtils$InitThread;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lflyme/support/v7/widget/ViewUtils$InitThread;-><init>(Lflyme/support/v7/widget/ViewUtils$1;)V

    invoke-virtual {v2}, Lflyme/support/v7/widget/ViewUtils$InitThread;->run()V

    .line 160
    :cond_1c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 161
    new-instance v3, Lflyme/support/v7/widget/ViewUtils$1;

    invoke-direct {v3, p0}, Lflyme/support/v7/widget/ViewUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_40

    .line 168
    :cond_2a
    sget-object v2, Lflyme/support/v7/widget/ViewUtils;->sMakeOptionalFitsSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_32} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_32} :catch_33

    goto :goto_40

    :catch_33
    move-exception p0

    .line 173
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :catch_38
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return-void
.end method
