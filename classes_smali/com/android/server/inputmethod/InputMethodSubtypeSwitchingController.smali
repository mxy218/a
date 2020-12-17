.class final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .registers 3
    .param p1, "settings"  # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p2, "context"  # Landroid/content/Context;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 504
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 505
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 3
    .param p0, "x0"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    return v0
.end method

.method private static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 3
    .param p0, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 252
    if-eqz p1, :cond_b

    .line 253
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    .line 252
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    goto :goto_c

    .line 253
    :cond_b
    const/4 v0, -0x1

    .line 252
    :goto_c
    return v0
.end method

.method public static createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    .registers 3
    .param p0, "settings"  # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;
    .param p1, "context"  # Landroid/content/Context;

    .line 509
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .registers 3
    .param p1, "pw"  # Landroid/util/Printer;

    .line 547
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-eqz v0, :cond_8

    .line 548
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    goto :goto_d

    .line 550
    :cond_8
    const-string v0, "    mController=null"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 552
    :goto_d
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 5
    .param p1, "onlyCurrentIme"  # Z
    .param p2, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 531
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_6

    .line 535
    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_6
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0
.end method

.method public getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;
    .registers 4
    .param p1, "includingAuxiliarySubtypes"  # Z
    .param p2, "isScreenLocked"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 513
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez v0, :cond_5

    .line 517
    return-void

    .line 519
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 520
    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 523
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 524
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 525
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;

    move-result-object v1

    .line 524
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 527
    return-void
.end method
