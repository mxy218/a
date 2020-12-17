.class Lcom/android/systemui/qs/tiles/NfcTile$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/NfcTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/NfcTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/NfcTile;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 175
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$000(Lcom/android/systemui/qs/tiles/NfcTile;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 176
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/NfcTile;->access$200(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/NfcTile;->access$200(Lcom/android/systemui/qs/tiles/NfcTile;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/NfcTile;->access$102(Lcom/android/systemui/qs/tiles/NfcTile;Z)Z

    .line 179
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NfcTile$1;->this$0:Lcom/android/systemui/qs/tiles/NfcTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
