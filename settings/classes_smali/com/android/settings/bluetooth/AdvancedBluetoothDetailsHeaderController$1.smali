.class Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;
.super Ljava/lang/Object;
.source "AdvancedBluetoothDetailsHeaderController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;->this$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    if-nez p3, :cond_11

    const/4 p1, 0x0

    goto :goto_16

    .line 79
    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :goto_16
    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "Metadata updated in Device %s: %d = %s."

    .line 78
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdvancedBtHeaderCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;->this$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method
