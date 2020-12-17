.class public Lcom/meizu/settings/root/FlymeRootRequestActivity;
.super Landroid/app/Activity;
.source "FlymeRootRequestActivity.java"


# instance fields
.field private appLabel:Ljava/lang/String;

.field private mEnableRootPermissionDialog:Landroid/app/AlertDialog;

.field private mIsEdit:Z

.field private mIsEnableDialogClicked:Z

.field private mIsWarningDialogClicked:Z

.field private mPackageName:Ljava/lang/String;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private pid:I

.field private property_set:Z

.field private uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEnableDialogClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEnableDialogClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Landroid/app/AlertDialog;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Ljava/lang/String;
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->property_set:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->showWarnnigDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsWarningDialogClicked:Z

    return p0
.end method

.method static synthetic access$502(Lcom/meizu/settings/root/FlymeRootRequestActivity;Z)Z
    .registers 2

    .line 23
    iput-boolean p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsWarningDialogClicked:Z

    return p1
.end method

.method static synthetic access$602(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/settings/root/FlymeRootRequestActivity;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    return p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/root/FlymeRootRequestActivity;I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->updateSavedHashMap(I)V

    return-void
.end method

.method private getKey()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.root_permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeRootRequestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getPackageStatus(Ljava/lang/String;)I
    .registers 3

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 168
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 169
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method private showEnableRootPermissionDialog()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->appLabel:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_1b

    .line 177
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1211ec

    .line 176
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iput-boolean v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEnableDialogClicked:Z

    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 183
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity$3;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity$2;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/root/FlymeRootRequestActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity$1;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    .line 224
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWarnnigDialog()V
    .registers 5

    const-string v0, "FlymeRootRequestActivity"

    const-string v1, "showWarnnigDialog"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d02d8

    const/4 v1, 0x0

    .line 230
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05f4

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 233
    iget-boolean v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    if-eqz v2, :cond_21

    const/16 v2, 0x8

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_21
    const/4 v2, 0x0

    .line 236
    iput-boolean v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsWarningDialogClicked:Z

    .line 237
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1211f8

    .line 238
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1211f7

    .line 239
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 240
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;

    invoke-direct {v3, p0, v1}, Lcom/meizu/settings/root/FlymeRootRequestActivity$6;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/meizu/settings/root/FlymeRootRequestActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/meizu/settings/root/FlymeRootRequestActivity$5;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;Landroid/widget/CheckBox;)V

    .line 257
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity$4;-><init>(Lcom/meizu/settings/root/FlymeRootRequestActivity;)V

    .line 274
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    .line 285
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSavedHashMap(I)V
    .registers 6

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSavedHashMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeRootRequestActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1, v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->saveHashMap(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    const-string v0, "FlymeRootRequestActivity"

    const-string v1, "finish"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "uid"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->uid:I

    const-string v1, "pid"

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->pid:I

    .line 45
    iget v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->uid:I

    const/4 v2, 0x1

    const-string v3, "FlymeRootRequestActivity"

    if-eq v1, v0, :cond_147

    iget v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->pid:I

    if-ne v1, v0, :cond_25

    goto/16 :goto_147

    :cond_25
    const/4 v0, 0x0

    const-string v1, "remove_property"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-boolean v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->property_set:Z

    .line 56
    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void

    :cond_3d
    const-string v1, "is_edit"

    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEdit "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    .line 66
    :try_start_60
    iget v5, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->uid:I

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-boolean v6, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    if-eqz v6, :cond_75

    const-string v4, "package_name"

    .line 69
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->appLabel:Ljava/lang/String;

    goto :goto_7c

    :cond_75
    if-eqz v5, :cond_7c

    .line 72
    array-length p1, v5

    if-lez p1, :cond_7c

    .line 73
    aget-object v4, v5, v0

    :cond_7c
    :goto_7c
    if-eqz v4, :cond_bf

    .line 78
    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 81
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_99

    .line 82
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    .line 83
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_9f

    .line 85
    :cond_99
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    .line 86
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 88
    :goto_9f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->appLabel:Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a5} :catch_a6

    goto :goto_bf

    :catch_a6
    move-exception p1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception with packagemanager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_bf
    :goto_bf
    iget-boolean p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mIsEdit:Z

    const/4 v0, 0x2

    if-nez p1, :cond_12a

    .line 98
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getPackageStatus(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v0, :cond_ef

    .line 100
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " allowed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void

    :cond_ef
    if-nez p1, :cond_114

    .line 105
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " disallowed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void

    .line 110
    :cond_114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ask"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_12a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->showEnableRootPermissionDialog()V

    return-void

    :cond_147
    :goto_147
    const-string p1, "no uid or pid"

    .line 46
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-boolean v2, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->property_set:Z

    .line 48
    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    iget-boolean v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->property_set:Z

    if-nez v0, :cond_3a

    .line 128
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2e

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#key.length > 31# -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeRootRequestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 131
    :cond_2e
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->property_set:Z

    .line 136
    :cond_3a
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 139
    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mEnableRootPermissionDialog:Landroid/app/AlertDialog;

    .line 141
    :cond_4c
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5d

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 144
    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootRequestActivity;->mWarningDialog:Landroid/app/AlertDialog;

    .line 146
    :cond_5d
    invoke-virtual {p0}, Lcom/meizu/settings/root/FlymeRootRequestActivity;->finish()V

    return-void
.end method
