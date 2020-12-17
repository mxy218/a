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

    .line 941
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    .line 943
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    .line 944
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    .line 945
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 946
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 947
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    .line 948
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 949
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 950
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 951
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 952
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 954
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "x1"  # Lcom/android/server/statusbar/StatusBarManagerService$1;

    .line 941
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled2()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 941
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->disableEquals(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 941
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setDisabled(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # Z

    .line 941
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setMenuVisible(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIZLandroid/os/IBinder;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Z
    .param p4, "x4"  # Landroid/os/IBinder;

    .line 941
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setImeWindowState(IIZLandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 8
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Landroid/graphics/Rect;
    .param p5, "x5"  # Landroid/graphics/Rect;
    .param p6, "x6"  # Z

    .line 941
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->systemUiStateEquals(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/statusbar/StatusBarManagerService$UiState;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Landroid/graphics/Rect;
    .param p5, "x5"  # Landroid/graphics/Rect;
    .param p6, "x6"  # Z

    .line 941
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->setSystemUiState(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/statusbar/StatusBarManagerService$UiState;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 941
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->getDisabled1()I

    move-result v0

    return v0
.end method

.method private disableEquals(II)Z
    .registers 4
    .param p1, "disabled1"  # I
    .param p2, "disabled2"  # I

    .line 978
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getDisabled1()I
    .registers 2

    .line 957
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    return v0
.end method

.method private getDisabled2()I
    .registers 2

    .line 961
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    return v0
.end method

.method private isMenuVisible()Z
    .registers 2

    .line 970
    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    return v0
.end method

.method private setDisabled(II)V
    .registers 3
    .param p1, "disabled1"  # I
    .param p2, "disabled2"  # I

    .line 965
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled1:I

    .line 966
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDisabled2:I

    .line 967
    return-void
.end method

.method private setImeWindowState(IIZLandroid/os/IBinder;)V
    .registers 5
    .param p1, "vis"  # I
    .param p2, "backDisposition"  # I
    .param p3, "showImeSwitcher"  # Z
    .param p4, "token"  # Landroid/os/IBinder;

    .line 1005
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeWindowVis:I

    .line 1006
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeBackDisposition:I

    .line 1007
    iput-boolean p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mShowImeSwitcher:Z

    .line 1008
    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mImeToken:Landroid/os/IBinder;

    .line 1009
    return-void
.end method

.method private setMenuVisible(Z)V
    .registers 2
    .param p1, "menuVisible"  # Z

    .line 974
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mMenuVisible:Z

    .line 975
    return-void
.end method

.method private setSystemUiState(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "vis"  # I
    .param p2, "fullscreenStackVis"  # I
    .param p3, "dockedStackVis"  # I
    .param p4, "fullscreenBounds"  # Landroid/graphics/Rect;
    .param p5, "dockedBounds"  # Landroid/graphics/Rect;
    .param p6, "navbarColorManagedByIme"  # Z

    .line 984
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    .line 985
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    .line 986
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    .line 987
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 989
    iput-boolean p6, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    .line 990
    return-void
.end method

.method private systemUiStateEquals(IIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)Z
    .registers 8
    .param p1, "vis"  # I
    .param p2, "fullscreenStackVis"  # I
    .param p3, "dockedStackVis"  # I
    .param p4, "fullscreenBounds"  # Landroid/graphics/Rect;
    .param p5, "dockedBounds"  # Landroid/graphics/Rect;
    .param p6, "navbarColorManagedByIme"  # Z

    .line 995
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mSystemUiVisibility:I

    if-ne v0, p1, :cond_22

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackSysUiVisibility:I

    if-ne v0, p2, :cond_22

    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackSysUiVisibility:I

    if-ne v0, p3, :cond_22

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 998
    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 999
    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mNavbarColorManagedByIme:Z

    if-ne v0, p6, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 995
    :goto_23
    return v0
.end method
