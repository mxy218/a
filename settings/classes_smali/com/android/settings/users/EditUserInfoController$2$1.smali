.class Lcom/android/settings/users/EditUserInfoController$2$1;
.super Landroid/os/AsyncTask;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserInfoController$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/users/EditUserInfoController$2;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserInfoController$2;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2$1;->this$1:Lcom/android/settings/users/EditUserInfoController$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 168
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserInfoController$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    .line 171
    iget-object p1, p0, Lcom/android/settings/users/EditUserInfoController$2$1;->this$1:Lcom/android/settings/users/EditUserInfoController$2;

    iget-object p1, p1, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {p1}, Lcom/android/settings/users/EditUserInfoController;->access$100(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/EditUserInfoController$2$1;->this$1:Lcom/android/settings/users/EditUserInfoController$2;

    iget-object v0, v0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    invoke-static {v0}, Lcom/android/settings/users/EditUserInfoController;->access$000(Lcom/android/settings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController$2$1;->this$1:Lcom/android/settings/users/EditUserInfoController$2;

    iget-object p0, p0, Lcom/android/settings/users/EditUserInfoController$2;->this$0:Lcom/android/settings/users/EditUserInfoController;

    .line 172
    invoke-static {p0}, Lcom/android/settings/users/EditUserInfoController;->access$200(Lcom/android/settings/users/EditUserInfoController;)Lcom/android/settings/users/EditUserPhotoController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 171
    invoke-virtual {p1, v0, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    return-object p0
.end method
