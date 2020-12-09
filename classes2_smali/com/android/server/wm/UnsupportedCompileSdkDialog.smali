.class public Lcom/android/server/wm/UnsupportedCompileSdkDialog;
.super Ljava/lang/Object;
.source "UnsupportedCompileSdkDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    const/high16 v1, 0x43fa0000  # 500.0f

    const/4 v2, 0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 45
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x104070f

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    const v2, 0x1090125

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 55
    if-eqz p3, :cond_4a

    .line 56
    const v2, 0x104070e

    new-instance v3, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    :cond_4a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    .line 62
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 64
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 65
    const/16 p3, 0x7d2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 68
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedCompileSdkDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x10201bf

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 71
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    new-instance p3, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$UMRp9pktAbDwIyCxd4tnMBne_so;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/-$$Lambda$UnsupportedCompileSdkDialog$UMRp9pktAbDwIyCxd4tnMBne_so;-><init>(Lcom/android/server/wm/UnsupportedCompileSdkDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$1$UnsupportedCompileSdkDialog(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 72
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method
