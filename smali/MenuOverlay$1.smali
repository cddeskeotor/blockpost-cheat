.class Lcom/rocket/overlay/MenuOverlay$1;
.super Ljava/lang/Object;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic this$0:Lcom/rocket/overlay/MenuOverlay;

.method constructor <init>(Lcom/rocket/overlay/MenuOverlay;)V
    .locals 0
    iput-object p1, p0, Lcom/rocket/overlay/MenuOverlay$1;->this$0:Lcom/rocket/overlay/MenuOverlay;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "aim_enabled="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/rocket/overlay/NativeBridge;->send(Ljava/lang/String;)V
    return-void
.end method
