.class public Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "InstalledAppDetailsPermissionsDetails.java"


# instance fields
.field private mAppVersion:Landroid/widget/TextView;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 3

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_b

    .line 227
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private initPermissions(Landroid/view/View;)V
    .registers 13

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageName:Ljava/lang/String;

    const v1, 0x7f0a0554

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 118
    new-instance v2, Lcom/meizu/settings/applications/AppSecurityPermissions;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-virtual {v2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionCount()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-gtz v3, :cond_28

    if-eqz v0, :cond_24

    goto :goto_28

    .line 127
    :cond_24
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2b

    .line 125
    :cond_28
    :goto_28
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2b
    const v3, 0x7f0a063a

    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0a063b

    .line 132
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    if-eqz v0, :cond_6b

    .line 136
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0a0640

    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 140
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0300f4

    const v8, 0x1090008

    invoke-static {v4, v6, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    const v6, 0x1090009

    .line 143
    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sub-int/2addr v0, v7

    .line 146
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_71

    .line 152
    :cond_6b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 156
    :goto_71
    invoke-virtual {v2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionCount()I

    move-result v0

    if-lez v0, :cond_19f

    const v0, 0x7f0a063f

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 160
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    invoke-virtual {v2}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_9b

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_9b

    .line 167
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    :cond_9b
    if-eqz v0, :cond_19f

    .line 169
    array-length v1, v0

    if-le v1, v7, :cond_19f

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    .line 171
    :goto_a6
    array-length v3, v0

    if-ge v2, v3, :cond_c8

    .line 172
    aget-object v3, v0, v2

    .line 173
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    goto :goto_c5

    .line 177
    :cond_b6
    :try_start_b6
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 178
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c5} :catch_c5

    :catch_c5
    :goto_c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 182
    :cond_c8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19f

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v0, v7, :cond_e4

    .line 187
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_138

    :cond_e4
    if-ne v0, v3, :cond_fc

    const v0, 0x7f120a43

    new-array v4, v3, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 190
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    .line 189
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_138

    :cond_fc
    add-int/lit8 v4, v0, -0x2

    .line 192
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v0, -0x3

    :goto_10a
    if-ltz v6, :cond_126

    if-nez v6, :cond_112

    const v8, 0x7f120a40

    goto :goto_115

    :cond_112
    const v8, 0x7f120a42

    :goto_115
    new-array v9, v3, [Ljava/lang/Object;

    .line 195
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v4, v9, v7

    .line 194
    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v6, -0x1

    goto :goto_10a

    :cond_126
    const v6, 0x7f120a41

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v5

    sub-int/2addr v0, v7

    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v7

    .line 197
    invoke-virtual {v2, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_138
    const v1, 0x7f0a063c

    .line 200
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 202
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f1212e1

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    iget-object v4, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 204
    invoke-virtual {v4, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v7

    .line 203
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41880000  # 17.0f

    .line 211
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 212
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 213
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 214
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 215
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 216
    invoke-virtual {v1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 217
    invoke-virtual {v1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19f
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/view/View;Landroid/content/pm/PackageInfo;)V
    .registers 6

    if-nez p2, :cond_b

    const-string p0, "InstalledAppDetailsPermissionsDetails"

    const-string/jumbo p1, "setAppLabelAndIcon return"

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const v0, 0x7f0a00b6

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 94
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2a

    const v0, 0x7f0a00a8

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_2a
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_42

    const v0, 0x7f0a00ad

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_42
    const v0, 0x7f0a00b5

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mAppVersion:Landroid/widget/TextView;

    .line 105
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p1, :cond_73

    .line 106
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f12175d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 108
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    .line 107
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 110
    :cond_73
    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 47
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "isms"

    .line 48
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 49
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 50
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageName:Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageName:Ljava/lang/String;

    const-string v0, "InstalledAppDetailsPermissionsDetails"

    if-eqz p1, :cond_53

    .line 54
    :try_start_2c
    iget-object v1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2240

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_5b

    .line 59
    :catch_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPackageName = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " NameNotFoundException"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :cond_53
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const-string p0, "mPackageInfo = null"

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d0115

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 70
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_18

    .line 71
    new-instance p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    .line 73
    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 81
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/meizu/settings/utils/MzUtils;->setPageScrollbarStyle(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->initPermissions(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;->setAppLabelAndIcon(Landroid/view/View;Landroid/content/pm/PackageInfo;)V

    .line 84
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
