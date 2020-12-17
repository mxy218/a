.class Lcom/android/systemui/qs/tiles/BluetoothTile$4;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 681
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$4;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->access$300(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->access$2100(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    return-void
.end method
