.class Lcom/android/systemui/usb/StorageNotification$4;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .registers 5

    .line 154
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/usb/StorageNotification$MoveInfo;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 155
    iput p1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 156
    iput-object p2, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->extras:Landroid/os/Bundle;

    if-eqz p2, :cond_24

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 158
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.TITLE"

    .line 159
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 160
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 162
    :cond_24
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {p0}, Lcom/android/systemui/usb/StorageNotification;->access$600(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(IIJ)V
    .registers 6

    .line 167
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v0}, Lcom/android/systemui/usb/StorageNotification;->access$600(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    if-nez v0, :cond_25

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring unknown move "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_25
    invoke-static {p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 174
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {p0, v0, p2}, Lcom/android/systemui/usb/StorageNotification;->access$700(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    goto :goto_36

    .line 176
    :cond_31
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {p0, v0, p2, p3, p4}, Lcom/android/systemui/usb/StorageNotification;->access$800(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    :goto_36
    return-void
.end method
