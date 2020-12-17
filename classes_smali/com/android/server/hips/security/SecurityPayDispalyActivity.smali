.class public Lcom/android/server/hips/security/SecurityPayDispalyActivity;
.super Landroid/app/Activity;
.source "SecurityPayDispalyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setLightNavigationBarIconColor(Z)V
    .registers 4
    .param p1, "light"  # Z

    .line 73
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 74
    .local v0, "vis":I
    if-eqz p1, :cond_11

    .line 75
    or-int/lit8 v0, v0, 0x10

    goto :goto_13

    .line 77
    :cond_11
    and-int/lit8 v0, v0, -0x11

    .line 79
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    return-void
.end method

.method private setLightStatusBarIconColor(Z)V
    .registers 4
    .param p1, "light"  # Z

    .line 63
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 64
    .local v0, "vis":I
    if-eqz p1, :cond_11

    .line 65
    or-int/lit16 v0, v0, 0x2000

    goto :goto_13

    .line 67
    :cond_11
    and-int/lit16 v0, v0, -0x2001

    .line 69
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    return-void
.end method

.method private showSafePay()V
    .registers 4

    .line 83
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.radio.safe_pay.show"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 84
    const v1, 0xa0a0105

    invoke-virtual {p0, v1}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 85
    .local v1, "safeText":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    .end local v1  # "safeText":Landroid/widget/LinearLayout;
    :cond_17
    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .registers 4

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 57
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 59
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"  # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 32
    const v1, 0xa0d0042

    invoke-virtual {p0, v1}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->setContentView(I)V

    .line 33
    const v1, 0xa0a0101

    invoke-virtual {p0, v1}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 34
    .local v1, "button":Landroid/widget/Button;
    if-eqz v1, :cond_29

    .line 35
    new-instance v2, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;

    invoke-direct {v2, p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;-><init>(Lcom/android/server/hips/security/SecurityPayDispalyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :cond_29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "click_paysafe_notice"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v3, v2}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x80809

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 48
    invoke-direct {p0, v0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->setLightStatusBarIconColor(Z)V

    .line 49
    invoke-direct {p0, v0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->setLightNavigationBarIconColor(Z)V

    .line 50
    invoke-direct {p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->showSafePay()V

    .line 51
    return-void
.end method
