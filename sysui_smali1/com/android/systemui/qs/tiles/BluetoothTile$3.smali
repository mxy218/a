.class Lcom/android/systemui/qs/tiles/BluetoothTile$3;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p2, :cond_c

    const/4 p0, 0x1

    return p0

    .line 673
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 667
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/BluetoothTile$3;->compare(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method
