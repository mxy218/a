.class Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "DefaultVoiceInputPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSettingChange()V
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->access$000(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    return-void
.end method