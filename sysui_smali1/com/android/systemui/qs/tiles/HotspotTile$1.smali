.class Lcom/android/systemui/qs/tiles/HotspotTile$1;
.super Landroid/database/ContentObserver;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/os/Handler;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 309
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 310
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$1;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
