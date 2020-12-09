.class public Lcom/android/server/wm/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    const/high16 v1, 0x43fa0000  # 500.0f

    const/4 v2, 0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p3

    .line 43
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const p3, 0x1040711

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 46
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    const p2, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 48
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 49
    const p3, 0x1090126

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    .line 53
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->create()V

    .line 55
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 56
    const/16 p3, 0x7d2

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 59
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const-string p3, "UnsupportedDisplaySizeDialog"

    invoke-virtual {p2, p3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    const p3, 0x10201bf

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 62
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    new-instance p3, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;-><init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$0$UnsupportedDisplaySizeDialog(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 63
    iget-object p2, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 73
    return-void
.end method
