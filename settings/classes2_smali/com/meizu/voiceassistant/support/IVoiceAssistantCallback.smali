.class public interface abstract Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;
.super Ljava/lang/Object;
.source "IVoiceAssistantCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailure(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
