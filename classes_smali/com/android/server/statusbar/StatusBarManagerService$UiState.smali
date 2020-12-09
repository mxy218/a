.class Lcom/android/server/statusbar/StatusBarManagerService$UiState;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/statusbar/StatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiState"
.end annotation


# instance fields
.field private mDisabled1:I

.field private mDisabled2:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedStackSysUiVisibility:I

.field private final mFullscreenStackBounds:Landroid/graphics/Rect;

.field private mFullscreenStackSysUiVisibility:I

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private mMenuVisible:Z

.field private mNavbarColorManagedByIme:Z

.field private mShowImeSwitcher:Z

.field private mSystemUiVisibility:I

.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 3

    .line 968
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    .line 970
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    .line 971
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    .line 972
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 973
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 974
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    .line 975
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 976
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 977
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 978
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 979
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 981
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .registers 3

    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .registers 3

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .registers 3

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .registers 2

    .line 968
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setMenuVisible(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .registers 5

    .line 968
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;
    .registers 1

    .line 968
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;
    .registers 1

    .line 968
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    .line 968
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 7

    .line 968
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->systemUiStateEquals(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7

    .line 968
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setSystemUiState(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    .line 968
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return p0
.end method

.method static synthetic access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 1

    .line 968
    iget-boolean p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    iget p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .registers 1

    .line 968
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 1

    .line 968
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result p0

    return p0
.end method

.method private disableEquals(II)Z
    .registers 4

    .line 1005
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_a

    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private getDisabled1()I
    .registers 2

    .line 984
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .registers 2

    .line 988
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private isMenuVisible()Z
    .registers 2

    .line 997
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    return v0
.end method

.method private setDisabled(II)V
    .registers 3

    .line 992
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 993
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 994
    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .registers 5

    .line 1032
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1033
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1034
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1035
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 1036
    return-void
.end method

.method private setMenuVisible(Z)V
    .registers 2

    .line 1001
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    .line 1002
    return-void
.end method

.method private setSystemUiState(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7

    .line 1011
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    .line 1012
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    .line 1013
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    .line 1014
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1015
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1016
    iput-boolean p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 1017
    return-void
.end method

.method private systemUiStateEquals(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 8

    .line 1022
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    if-ne v0, p1, :cond_22

    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    if-ne p1, p2, :cond_22

    iget p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    if-ne p1, p3, :cond_22

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 1025
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 1026
    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    if-ne p1, p6, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 1022
    :goto_23
    return p1
.end method
