.class public Lcom/android/settings/wifi/WifiConnectListener;
.super Ljava/lang/Object;
.source "WifiConnectListener.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConnectListener;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_f

    const p1, 0x7f1218d9

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_f
    return-void
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
