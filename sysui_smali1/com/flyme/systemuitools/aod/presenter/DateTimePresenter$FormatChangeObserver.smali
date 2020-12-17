.class Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DateTimePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;


# direct methods
.method public constructor <init>(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 83
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->access$000(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;)V

    .line 84
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$FormatChangeObserver;->this$0:Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->updateDateTime()V

    return-void
.end method
