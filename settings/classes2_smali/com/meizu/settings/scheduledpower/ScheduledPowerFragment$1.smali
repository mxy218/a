.class Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$1;
.super Landroid/database/ContentObserver;
.source "ScheduledPowerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;Landroid/os/Handler;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment$1;->this$0:Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;

    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;->access$000(Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;)V

    return-void
.end method
