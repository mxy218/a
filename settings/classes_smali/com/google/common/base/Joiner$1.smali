.class Lcom/google/common/base/Joiner$1;
.super Lcom/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner;Ljava/lang/String;)V
    .registers 4

    .line 219
    iput-object p1, p0, Lcom/google/common/base/Joiner$1;->this$0:Lcom/google/common/base/Joiner;

    iput-object p3, p0, Lcom/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/base/Joiner;-><init>(Lcom/google/common/base/Joiner;Lcom/google/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_5

    .line 221
    iget-object p0, p0, Lcom/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    goto :goto_b

    :cond_5
    iget-object p0, p0, Lcom/google/common/base/Joiner$1;->this$0:Lcom/google/common/base/Joiner;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .registers 2

    .line 225
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "already specified useForNull"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
