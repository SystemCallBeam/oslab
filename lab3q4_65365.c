#include <stdio.h>
int main() {
	float n, ans = 0, cnt = 0;
	scanf("%f", &n);
	while(n > 0) {
		cnt++;
		ans += n;
		scanf("%f", &n);
	}	
	printf("summation = %.2f\n", ans);
	printf("avg = %.2f\n", ans/cnt);
	//printf("summation = %d\n", a+b+c);
	return 0;
}
