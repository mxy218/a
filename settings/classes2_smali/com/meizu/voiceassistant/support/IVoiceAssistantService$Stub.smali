.class public abstract Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;
.super Landroid/os/Binder;
.source "IVoiceAssistantService.java"

# interfaces
.implements Lcom/meizu/voiceassistant/support/IVoiceAssistantService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/voiceassistant/support/IVoiceAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/voiceassistant/support/IVoiceAssistantService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 83
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 84
    instance-of v1, v0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    if-eqz v1, :cond_13

    .line 85
    check-cast v0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;
    .registers 1

    .line 619
    sget-object v0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->sDefaultImpl:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    return-object v0
.end method
