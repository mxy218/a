.class public final synthetic Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;->INSTANCE:Lcom/flyme/systemui/statusbar/notification/-$$Lambda$NotificationFilterPanel$It6CmQRW0SujmfIhmUg3pomyJdY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->lambda$onFinishInflate$3(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
