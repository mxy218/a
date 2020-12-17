.class Lcom/meizu/settings/widget/DoubleVideoPreference$4;
.super Ljava/lang/Object;
.source "DoubleVideoPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/DoubleVideoPreference;->initMediaPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/meizu/settings/widget/DoubleVideoPreference$4;->this$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    const/4 p0, 0x1

    .line 259
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
