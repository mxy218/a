.class final Lcom/android/server/am/CarUserSwitchingDialog;
.super Lcom/android/server/am/UserSwitchingDialog;
.source "CarUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManagerCarUserSwitchingDialog"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method inflateContent()V
    .registers 6

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/CarUserSwitchingDialog;->setCancelable(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10303e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 74
    iget-object v3, p0, Lcom/android/server/am/CarUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_55

    .line 76
    const v3, 0x1050059

    .line 77
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 76
    invoke-static {v2, v3}, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->getInstance(Landroid/graphics/Bitmap;F)Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;

    move-result-object v2

    .line 78
    const v3, 0x10204e1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 79
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_55
    const v2, 0x10204e0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    nop

    .line 86
    invoke-virtual {p0}, Lcom/android/server/am/CarUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 85
    const-string v4, "android.car.ENABLE_USER_SWITCH_DEVELOPER_MESSAGE"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 89
    const v4, 0x104011e

    if-eqz v3, :cond_aa

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " user\n(from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog;->mOldUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog;->mNewUser:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b1

    .line 93
    :cond_aa
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_b1
    invoke-virtual {p0, v1}, Lcom/android/server/am/CarUserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 96
    return-void
.end method
