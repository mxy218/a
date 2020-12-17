.class Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;
.super Ljava/lang/Object;
.source "MzDonotDisturbScheduleEditor.java"

# interfaces
.implements Lflyme/support/v7/app/ActionBar$ControlTitleBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateControlButton(ILflyme/support/v7/app/ActionBar$ControlButton;)V
    .registers 4

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_2f

    :cond_6
    const p1, 0x7f120741

    .line 188
    invoke-interface {p2, p1}, Lflyme/support/v7/app/ActionBar$ControlButton;->setId(I)V

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    const v0, 0x7f12121c

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lflyme/support/v7/app/ActionBar$ControlButton;->setTitle(Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    invoke-static {p0, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;->access$002(Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;Lflyme/support/v7/app/ActionBar$ControlButton;)Lflyme/support/v7/app/ActionBar$ControlButton;

    goto :goto_2f

    :cond_1e
    const p1, 0x102002c

    .line 183
    invoke-interface {p2, p1}, Lflyme/support/v7/app/ActionBar$ControlButton;->setId(I)V

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor$1;->this$0:Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleEditor;

    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lflyme/support/v7/app/ActionBar$ControlButton;->setTitle(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method
