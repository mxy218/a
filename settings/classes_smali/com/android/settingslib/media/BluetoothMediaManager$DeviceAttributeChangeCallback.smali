.class Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;
.super Ljava/lang/Object;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/BluetoothMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceAttributeChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/media/BluetoothMediaManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/media/BluetoothMediaManager;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/media/BluetoothMediaManager;Lcom/android/settingslib/media/BluetoothMediaManager$1;)V
    .registers 3

    .line 340
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;-><init>(Lcom/android/settingslib/media/BluetoothMediaManager;)V

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged()V
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/BluetoothMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDataChanged()V

    return-void
.end method
