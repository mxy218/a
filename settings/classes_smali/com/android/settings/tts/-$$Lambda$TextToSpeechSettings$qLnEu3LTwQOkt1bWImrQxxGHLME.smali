.class public final synthetic Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$qLnEu3LTwQOkt1bWImrQxxGHLME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$qLnEu3LTwQOkt1bWImrQxxGHLME;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$qLnEu3LTwQOkt1bWImrQxxGHLME;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->lambda$onInitEngine$2$TextToSpeechSettings()V

    return-void
.end method
