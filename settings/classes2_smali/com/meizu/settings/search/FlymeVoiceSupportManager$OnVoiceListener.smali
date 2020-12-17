.class public interface abstract Lcom/meizu/settings/search/FlymeVoiceSupportManager$OnVoiceListener;
.super Ljava/lang/Object;
.source "FlymeVoiceSupportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/FlymeVoiceSupportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVoiceListener"
.end annotation


# virtual methods
.method public abstract onServiceConnected()V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract onStringOfVoiceRecieved(Ljava/lang/String;)V
.end method

.method public abstract onVoiceRecognitionFailed(Ljava/lang/String;)V
.end method
