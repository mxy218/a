.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mDarkModeColor:Landroid/graphics/Color;

.field private mDirectReplying:Z

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mForceDarkForScrim:Z

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mNavbarColorManagedByIme:Z

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mQsCustomizing:Z

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 89
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkModeColor:Landroid/graphics/Color;

    .line 90
    check-cast p2, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private animateChange()Z
    .registers 4

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 216
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_11

    if-eq p0, v2, :cond_11

    move v0, v2

    :cond_11
    return v0
.end method

.method private isLight(III)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_b

    const/4 v1, 0x6

    if-ne p2, v1, :cond_9

    goto :goto_b

    :cond_9
    move p2, p0

    goto :goto_c

    :cond_b
    :goto_b
    move p2, v0

    :goto_c
    and-int/2addr p1, p3

    if-eqz p1, :cond_11

    move p1, v0

    goto :goto_12

    :cond_11
    move p1, p0

    :goto_12
    if-eqz p2, :cond_17

    if-eqz p1, :cond_17

    move p0, v0

    :cond_17
    return p0
.end method

.method private reevaluate()V
    .registers 16

    .line 167
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V

    .line 170
    iget v10, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    iget v13, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    iget-boolean v14, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method private updateNavigation()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_d

    .line 253
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    .line 253
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_d
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 226
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v2, :cond_15

    :cond_f
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_28

    if-nez v0, :cond_28

    .line 227
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_69

    .line 234
    :cond_28
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_30

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-eqz v2, :cond_36

    :cond_30
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_45

    if-nez v0, :cond_45

    .line 235
    :cond_36
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    const/4 p2, 0x0

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    .line 235
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    goto :goto_69

    .line 241
    :cond_45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v0, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object p1, p2

    .line 242
    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_5c

    .line 245
    :cond_57
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 247
    :goto_5c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :goto_69
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string v0, "LightBarController: "

    .line 270
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mSystemUiVisibility=0x"

    .line 271
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFullscreenStackVisibility=0x"

    .line 273
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDockedStackVisibility=0x"

    .line 275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mFullscreenLight="

    .line 278
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDockedLight="

    .line 279
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mLastFullscreenBounds="

    .line 281
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mLastDockedBounds="

    .line 282
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, " mNavigationLight="

    .line 284
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasLightNavigationBar="

    .line 285
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mLastStatusBarMode="

    .line 287
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLastNavigationBarMode="

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " mForceDarkForScrim="

    .line 290
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mQsCustomizing="

    .line 291
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDirectReplying="

    .line 292
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mNavbarColorManagedByIme="

    .line 293
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 295
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 298
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_bd

    const-string v1, " StatusBarTransitionsController:"

    .line 300
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 305
    :cond_bd
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_ce

    const-string v0, " NavigationBarTransitionsController:"

    .line 306
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_ce
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 4

    return-void
.end method

.method public onNavigationVisibilityChanged(IIZIZ)V
    .registers 8

    .line 146
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p2, p1

    or-int/2addr p2, v1

    xor-int/2addr v0, p2

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    if-eqz p3, :cond_36

    .line 151
    :cond_e
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 152
    invoke-direct {p0, p1, p4, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 154
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p1, :cond_2c

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    if-nez p1, :cond_26

    :cond_22
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-nez p1, :cond_2c

    :cond_26
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 157
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq p1, p3, :cond_36

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 161
    :cond_36
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    .line 162
    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    .line 163
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 2

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZIZ)V
    .registers 14

    .line 108
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    not-int v1, p3

    and-int v2, v0, v1

    and-int v3, p1, p3

    or-int/2addr v2, v3

    xor-int/2addr v0, v2

    .line 111
    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    and-int/2addr v1, v3

    and-int/2addr p3, p2

    or-int/2addr p3, v1

    xor-int v1, p3, v3

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSystemUiVisibilityChanged: fullscreenStackVis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",dockedStackVis="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",sbModeChanged="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",1equal="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 117
    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",2equal="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 118
    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightBarController"

    .line 115
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2000

    and-int/2addr v0, p1

    if-nez v0, :cond_6d

    and-int/lit16 v0, v1, 0x2000

    if-nez v0, :cond_6d

    if-nez p6, :cond_6d

    .line 121
    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {p6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6d

    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_81

    :cond_6d
    const-string p6, "onSystemUiVisibilityChanged: before updateStatus"

    .line 127
    invoke-static {p2, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, v2, p7, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    .line 132
    invoke-direct {p0, p3, p7, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    .line 133
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 136
    :cond_81
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    .line 137
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    .line 138
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    .line 139
    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 141
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setDirectReplying(Z)V
    .registers 3

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 186
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    return-void
.end method

.method public setQsCustomizing(Z)V
    .registers 3

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 176
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    .line 177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .registers 6

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 196
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_19

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_19

    const p1, 0x3dcccccd  # 0.1f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_19

    .line 199
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 200
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p1, :cond_27

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eq p1, v0, :cond_27

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_27
    return-void
.end method
