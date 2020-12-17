.class Lcom/android/settings/widget/MasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "MasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 71
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_15

    return-void

    .line 74
    :cond_15
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 76
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_45

    .line 78
    :cond_3c
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchPreference$1;->this$0:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-static {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->access$200(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z

    :goto_45
    return-void
.end method
