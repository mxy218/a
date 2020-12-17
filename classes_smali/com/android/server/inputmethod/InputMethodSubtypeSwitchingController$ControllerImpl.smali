.class public Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerImpl"
.end annotation


# instance fields
.field private final mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field private final mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V
    .registers 3
    .param p1, "switchingAwareRotationList"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    .param p2, "switchingUnawareRotationList"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 449
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 450
    return-void
.end method

.method public static createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .registers 6
    .param p0, "currentInstance"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;"
        }
    .end annotation

    .line 408
    .local p1, "sortedEnabledItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v0, 0x0

    .line 410
    .local v0, "switchingAwareRotationList":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
    nop

    .line 411
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 413
    .local v1, "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_19

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    if-eqz v2, :cond_19

    .line 415
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->access$100(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 418
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 420
    :cond_19
    if-nez v0, :cond_22

    .line 421
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$1;)V

    move-object v0, v2

    .line 425
    .end local v1  # "switchingAwareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_22
    const/4 v1, 0x0

    .line 427
    .local v1, "switchingUnawareRotationList":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 429
    .local v2, "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    if-eqz p0, :cond_3a

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    if-eqz v3, :cond_3a

    .line 432
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->access$300(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;

    move-result-object v3

    .line 431
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 435
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 437
    :cond_3a
    if-nez v1, :cond_42

    .line 438
    new-instance v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-direct {v3, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;-><init>(Ljava/util/List;)V

    move-object v1, v3

    .line 443
    .end local v2  # "switchingUnawareImeSubtypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_42
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    invoke-direct {v2, v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;-><init>(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)V

    return-object v2
.end method

.method private static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .registers 7
    .param p1, "supportsSwitchingToNextInputMethod"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 478
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 480
    .local v1, "ALL_ITEMS_COUNT":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_20

    .line 481
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 482
    .local v3, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v4

    if-ne v4, p1, :cond_1d

    .line 484
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v3  # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 487
    .end local v2  # "i":I
    :cond_20
    return-object v0
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;)V
    .registers 4
    .param p1, "pw"  # Landroid/util/Printer;

    .line 491
    const-string v0, "    mSwitchingAwareRotationList:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    const-string v1, "      "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 493
    const-string v0, "    mSwitchingUnawareRotationList:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 5
    .param p1, "onlyCurrentIme"  # Z
    .param p2, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 454
    if-nez p2, :cond_4

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 457
    :cond_4
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 458
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0

    .line 461
    :cond_11
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v0

    return-object v0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 4
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 467
    if-nez p1, :cond_3

    .line 468
    return-void

    .line 470
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 471
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 473
    :cond_e
    return-void
.end method
