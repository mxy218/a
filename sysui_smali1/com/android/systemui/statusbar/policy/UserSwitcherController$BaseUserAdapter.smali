.class public abstract Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 3

    .line 601
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 603
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 604
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 605
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->addAdapter(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 5

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 632
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 633
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    if-nez v0, :cond_29

    .line 635
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 638
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_34
    if-ge v1, v0, :cond_4c

    .line 641
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v3, :cond_47

    goto :goto_4c

    :cond_47
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4c
    :goto_4c
    return v2
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 680
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz p0, :cond_b

    .line 681
    sget p0, Lcom/android/systemui/R$drawable;->ic_add_circle_qs:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 684
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v0

    const/4 v1, 0x0

    .line 683
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 685
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p2, :cond_28

    const p2, 0x1010030

    .line 686
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_28
    return-object p0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .registers 2

    .line 652
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .registers 3

    .line 665
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz p0, :cond_1d

    .line 666
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz p0, :cond_f

    .line 667
    sget p0, Lcom/android/systemui/R$string;->guest_exit_guest:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 670
    :cond_f
    iget-object p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez p0, :cond_16

    sget p0, Lcom/android/systemui/R$string;->guest_new_guest:I

    goto :goto_18

    :cond_16
    sget p0, Lcom/android/systemui/R$string;->guest_nickname:I

    .line 669
    :goto_18
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :cond_1d
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz p0, :cond_28

    .line 673
    sget p0, Lcom/android/systemui/R$string;->user_add_user:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :cond_28
    iget-object p0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public refresh()V
    .registers 2

    .line 694
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v0, -0x2710

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .registers 2

    .line 661
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method
