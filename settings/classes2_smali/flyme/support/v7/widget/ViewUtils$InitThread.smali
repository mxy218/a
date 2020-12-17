.class Lflyme/support/v7/widget/ViewUtils$InitThread;
.super Ljava/lang/Thread;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/ViewUtils$1;)V
    .registers 2

    .line 210
    invoke-direct {p0}, Lflyme/support/v7/widget/ViewUtils$InitThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 215
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->access$100()Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_9

    .line 216
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->access$200()V

    .line 218
    :cond_9
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->access$300()Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_12

    .line 219
    invoke-static {}, Lflyme/support/v7/widget/ViewUtils;->access$400()V

    :cond_12
    const/4 p0, 0x2

    .line 221
    invoke-static {p0}, Lflyme/support/v7/widget/ViewUtils;->access$502(I)I

    return-void
.end method
