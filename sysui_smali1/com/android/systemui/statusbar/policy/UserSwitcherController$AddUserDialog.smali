.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .registers 4

    .line 868
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 869
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 870
    sget p1, Lcom/android/systemui/R$string;->user_add_user_title:I

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 871
    sget p1, Lcom/android/systemui/R$string;->user_add_user_message_short:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1040000

    .line 873
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    .line 872
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x104000a

    .line 875
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 874
    invoke-virtual {p0, p2, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 876
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_7

    .line 882
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_43

    .line 884
    :cond_7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 885
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    .line 888
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->user_new_user_name:I

    .line 889
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 888
    invoke-virtual {p2, p1, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    .line 895
    :cond_25
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 896
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 897
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 896
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 899
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    :goto_43
    return-void
.end method
