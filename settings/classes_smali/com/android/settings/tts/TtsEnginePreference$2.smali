.class Lcom/android/settings/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V
    .registers 3

    .line 142
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 145
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreference$2;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-static {p1, p0}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V

    return-void
.end method
