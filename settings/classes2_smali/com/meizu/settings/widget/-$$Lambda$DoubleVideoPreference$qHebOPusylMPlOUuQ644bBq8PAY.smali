.class public final synthetic Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$qHebOPusylMPlOUuQ644bBq8PAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field private final synthetic f$0:Lcom/meizu/settings/widget/DoubleVideoPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/settings/widget/DoubleVideoPreference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$qHebOPusylMPlOUuQ644bBq8PAY;->f$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p0, p0, Lcom/meizu/settings/widget/-$$Lambda$DoubleVideoPreference$qHebOPusylMPlOUuQ644bBq8PAY;->f$0:Lcom/meizu/settings/widget/DoubleVideoPreference;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/DoubleVideoPreference;->lambda$initMediaPlayer$1$DoubleVideoPreference(Landroid/media/MediaPlayer;)V

    return-void
.end method
