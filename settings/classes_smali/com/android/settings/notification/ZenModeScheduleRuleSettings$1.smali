.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    .line 89
    iget-object p0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    const/4 p0, 0x1

    return p0
.end method
