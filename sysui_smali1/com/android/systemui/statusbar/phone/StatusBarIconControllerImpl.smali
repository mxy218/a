.class public Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.source "StatusBarIconControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlymeBlockSystemIcon:[Ljava/lang/String;

.field private final mIconBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDark:Z

.field private mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;-><init>([Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIsDark:Z

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    .line 86
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 87
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->mz_system_icon_black_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mFlymeBlockSystemIcon:[Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    return-void
.end method

.method private addSystemIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 6

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotName(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result p1

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;-><init>(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 4

    .line 353
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result p1

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$addSystemIcon$0(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 5

    .line 157
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method

.method static synthetic lambda$handleSet$4(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 3

    .line 354
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method

.method static synthetic lambda$removeAllIconsForSlot$2(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 2

    .line 338
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$removeIcon$3(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 2

    .line 349
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    return-void
.end method

.method static synthetic lambda$setExternalIcon$1(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 3

    .line 245
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconExternal(II)V

    return-void
.end method

.method private loadDimens()V
    .registers 1

    return-void
.end method

.method private setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    if-nez p2, :cond_a

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_a
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p2

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method


# virtual methods
.method public addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 10

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlots()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 99
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 101
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 105
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    .line 106
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result v6

    .line 107
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_28

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_52
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 376
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 377
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->isDemoable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 378
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string p1, "StatusBarIconController state:"

    .line 359
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 361
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 362
    iget-object p3, p3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 363
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  icon views: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_38
    if-ge v1, v0, :cond_b

    .line 366
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 372
    :cond_5f
    invoke-super {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->loadDimens()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "icon_blacklist"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 123
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlots()Ljava/util/ArrayList;

    move-result-object p1

    .line 126
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_26
    if-ltz v0, :cond_3f

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 134
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3f
    const/4 v0, 0x0

    .line 139
    :goto_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_74

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 141
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_55

    goto :goto_71

    .line 143
    :cond_55
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 144
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_59

    :cond_71
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_74
    return-void
.end method

.method public removeAllIconsForSlot(Ljava/lang/String;)V
    .registers 7

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 333
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    .line 334
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 336
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result v3

    .line 337
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->removeForTag(I)V

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_17

    :cond_3d
    return-void
.end method

.method public removeIcon(II)V
    .registers 4

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 347
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->removeIcon(II)V

    const/4 p2, 0x0

    .line 348
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result p1

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$XIHL8F8kJA04U9X_9IHtSYwXxLU;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$XIHL8F8kJA04U9X_9IHtSYwXxLU;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 2

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    return-void
.end method

.method public removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V
    .registers 2

    .line 114
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->destroy()V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExternalIcon(Ljava/lang/String;)V
    .registers 4

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getViewIndex(II)I

    move-result p1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$rsmVGSlXlU7ffeIAEgpWeyyu04I;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$rsmVGSlXlU7ffeIAEgpWeyyu04I;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .registers 9

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIcon: index-holder,slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarIconController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mFlymeBlockSystemIcon:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1f
    if-ge v3, v1, :cond_31

    aget-object v4, v0, v3

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return-void

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 289
    :cond_31
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_3c

    const/4 v2, 0x1

    .line 290
    :cond_3c
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    if-eqz v2, :cond_45

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->addSystemIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_48

    .line 295
    :cond_45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_48
    return-void
.end method

.method public setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .registers 12

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIcon: slot-res-char,slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarIconController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mFlymeBlockSystemIcon:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    return-void

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_29
    const-string v0, "managed_profile"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTS()Z

    move-result v0

    if-nez v0, :cond_38

    return-void

    .line 174
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    .line 175
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_61

    .line 177
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    .line 178
    invoke-static {v1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    .line 180
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromIcon(Lcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_76

    .line 183
    :cond_61
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    iput-object p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 184
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object p2

    iput-object p3, p2, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_76
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 7

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIcon: slot-icon,slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarIconController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mFlymeBlockSystemIcon:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 258
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-void

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 262
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 5

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    if-eqz p2, :cond_14

    .line 308
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->mSwitchController:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->isSlotVisible(Ljava/lang/String;)Z

    move-result p2

    .line 310
    :cond_14
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result p1

    if-ne p1, p2, :cond_1b

    return-void

    .line 313
    :cond_1b
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setVisible(Z)V

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method

.method public setMobileIcons(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    move-result-object v0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    .line 226
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 228
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 229
    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 231
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromMobileIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v1

    .line 232
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_f

    .line 234
    :cond_2b
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setMobileState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;)V

    .line 235
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_f

    :cond_32
    return-void
.end method

.method public setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .registers 4

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeIcon(II)V

    return-void

    .line 203
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->getIcon(II)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_19

    .line 205
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->fromWifiIconState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_1f

    .line 208
    :cond_19
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->handleSet(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_1f
    return-void
.end method
